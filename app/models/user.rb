class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :email, presence: true
  validates :password, presence: true

  validates :email, uniqueness: true

  has_many :bookings
  has_many :products
  has_many :booked_products, through: :bookings, class_name: "Product", source: :user
end
