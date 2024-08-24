Rails.application.routes.draw do
  # Checkout Routes
  resources :checkouts, only: [:new, :create]

  # Custom checkout route (if needed)
  get 'checkout', to: 'checkout#show', as: :checkout

  # Devise routes for user authentication with custom controllers
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  # Stripe payment routes
  post '/webhooks/stripe', to: 'webhooks#stripe'
  get 'payment', to: 'payments#new'
  post 'payment', to: 'payments#create'
  get 'payment/success', to: 'payments#success'
  get 'payment/cancel', to: 'payments#cancel'

  # Default root route to the homepage
  root 'home#index'

  # Health check route for load balancers and uptime monitors
  get 'up' => 'rails/health#show', as: :rails_health_check

  # PWA routes
  get 'service-worker' => 'rails/pwa#service_worker', as: :pwa_service_worker
  get 'manifest' => 'rails/pwa#manifest', as: :pwa_manifest

  # Other resources
  resources :account_activations, only: [:edit]
  resources :microposts, only: %i[create destroy]
  resources :orders
  resources :relationships, only: [:create, :destroy]

  # Products with nested comments and ratings routes
  resources :products do
    resources :comments, only: [:create, :destroy]
    resources :ratings, only: [:create]
  end

  # Cart Routes
  resource :cart, only: [:show] do
    post 'add', to: 'carts#add', as: 'add_cart' 
    post 'increase_quantity/:id', to: 'cart_items#increase_quantity', as: 'increase_quantity_cart_item'
    post 'decrease_quantity/:id', to: 'cart_items#decrease_quantity', as: 'decrease_quantity_cart_item'
    delete 'remove/:id', to: 'carts#remove', as: 'remove_cart_item'
  end

  # Line item routes
  post 'line_items/:id/add' => 'line_items#add_quantity', as: 'line_item_add'
  post 'line_items/:id/reduce' => 'line_items#reduce_quantity', as: 'line_item_reduce'
  post 'line_items' => 'line_items#create'
  get 'line_items/:id' => 'line_items#show', as: 'line_item'
  delete 'line_items/:id' => 'line_items#destroy'
end
