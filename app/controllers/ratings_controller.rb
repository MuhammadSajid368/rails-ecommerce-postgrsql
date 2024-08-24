class RatingsController < ApplicationController
  before_action :set_product
  before_action :authenticate_user!

  def create
    @rating = @product.ratings.new(rating_params)
    @rating.user = current_user

    if @rating.save
      redirect_to @product, notice: 'Rating was successfully created.'
    else
      redirect_to @product, alert: 'There was an error creating the rating.'
    end
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def rating_params
    params.require(:rating).permit(:score)
  end
end
