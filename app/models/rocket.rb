class Rocket < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates :name, :content, :number_passengers, :price_per_day, presence: true
end
