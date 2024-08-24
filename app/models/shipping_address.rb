class ShippingAddress < ApplicationRecord
  belongs_to :user
  belongs_to :order

  validates :address, :city, :state, :zip_code, :country, presence: true
end
