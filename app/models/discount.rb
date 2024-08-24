class Discount < ApplicationRecord
  validates :code, :discount_type, :value, :expiration_date, presence: true

  def apply_discount(total)
    return total if expiration_date < Time.current

    case discount_type
    when 'percentage'
      total - (total * (value / 100.0))
    when 'fixed'
      total - value
    else
      total
    end
  end
end
