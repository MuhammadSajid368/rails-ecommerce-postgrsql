class CartItemsController < ApplicationController
  def increase_quantity
    @cart_item = CartItem.find(params[:id])
    @cart_item.increment!(:quantity)
    redirect_to cart_path(@cart_item.cart)
  end

  def decrease_quantity
    @cart_item = CartItem.find(params[:id])
    @cart_item.decrement!(:quantity)
    redirect_to cart_path(@cart_item.cart)
  end
end