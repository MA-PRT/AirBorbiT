class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.integer :full_price
      t.integer :number_of_days
      t.string :status, default: "pending"
      t.references :user, null: false, foreign_key: true
      t.references :rocket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
