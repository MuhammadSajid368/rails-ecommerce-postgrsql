class AddReviewToRatings < ActiveRecord::Migration[7.2]
  def change
    add_column :ratings, :review, :text
  end
end
