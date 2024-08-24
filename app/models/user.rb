class User < ApplicationRecord
  has_one :cart, dependent: :destroy
  after_create :create_cart
  has_many :orders
  has_one :shipping_address, dependent: :destroy

  private

  def create_cart
    Cart.create(user: self)
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
