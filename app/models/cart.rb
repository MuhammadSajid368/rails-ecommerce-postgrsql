class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items
  validates :user, presence: true

  def total_price
    cart_items.includes(:product).sum { |item| item.product.price * item.quantity }
  end
end