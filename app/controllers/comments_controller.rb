class CommentsController < ApplicationController
  before_action :set_product
  before_action :authenticate_user!

  def create
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @product, notice: 'Comment was successfully created.'
    else
      render 'products/show'
    end
  end

  def destroy
    @comment = @product.comments.find(params[:id])

    # Check if the current user is the owner of the comment
    if @comment.user == current_user
      @comment.destroy
      redirect_to @product, notice: 'Comment was successfully deleted.'
    else
      redirect_to @product, alert: 'You are not authorized to delete this comment.'
    end
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
