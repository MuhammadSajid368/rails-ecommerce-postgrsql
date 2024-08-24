# app/models/comment.rb
class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :product
    belongs_to :parent, class_name: 'Comment', optional: true
    validates :content, presence: true
  end
  