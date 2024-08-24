class CartsController < ApplicationController
  before_action :set_cart

  def show
    @cart = current_user.cart
    if @cart.present?
      @cart_items = @cart.cart_items.includes(:product)
    else
      @cart_items = [] 
    end
  end
  
  def add
    product = Product.find(params[:product_id])
    cart_item = @cart.cart_items.find_or_initialize_by(product: product)
    cart_item.quantity ||= 0  # Ensure quantity is initialized
    cart_item.quantity += 1
    cart_item.save
    redirect_to cart_path, notice: 'Product added to cart!'
  end

  private

  def set_cart
    @cart = current_user.cart || Cart.create(user: current_user)
  end
end
