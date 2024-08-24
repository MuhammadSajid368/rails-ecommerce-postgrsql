class Order < ApplicationRecord
  belongs_to :user
  has_one :shipping_address

  accepts_nested_attributes_for :shipping_address

  validates :total_price, presence: true, numericality: { greater_than: 0 }
  validates :status, presence: true

  validates_associated :shipping_address

  def calculate_total
    self.total_price = order_items.sum('quantity * price')
  end

  def calculate_shipping_cost
    base_cost = 5.00
    additional_cost = case shipping_address.country
                      when 'US' then 0
                      when 'Canada' then 10
                      else 20
                      end
    base_cost + additional_cost
  end

  def calculate_total_with_shipping
    calculate_total + calculate_shipping_cost
  end
end
