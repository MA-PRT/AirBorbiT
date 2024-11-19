class AddDateRangeToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :date_range, :daterange
  end
end
