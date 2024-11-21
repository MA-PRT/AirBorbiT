class ChangePricePerDayToFloatInRockets < ActiveRecord::Migration[7.1]
  def change
    change_column :rockets, :price_per_day, :float
  end
end
