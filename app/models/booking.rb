class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :rocket

  validates :status, inclusion: { in: %w[pending confirmed canceled] }
  validates :number_of_days, :full_price, presence: true
end