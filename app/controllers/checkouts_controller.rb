class CheckoutsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart

  def new
    @order = current_user.orders.build
    @shipping_address = current_user.shipping_address || ShippingAddress.new
  end

  def create
    @order = current_user.orders.build(order_params)
    @order.calculate_total

    if params[:discount_code].present?
      discount = Discount.find_by(code: params[:discount_code])
      @order.total_price = discount.apply_discount(@order.total_price) if discount
    end

    if @order.save
      @cart.cart_items.each do |item|
        @order.order_items.create(product: item.product, quantity: item.quantity, price: item.product.price)
      end
      clear_cart
      redirect_to order_path(@order), notice: 'Order placed successfully!'
    else
      render :new
    end
  end

  private

  def set_cart
    @cart = current_user.cart
  end

  def order_params
    params.require(:order).permit(:total_price, :status, shipping_address_attributes: [:address, :city, :state, :zip_code, :country])
  end

  def clear_cart
    @cart.cart_items.destroy_all
  end
end
