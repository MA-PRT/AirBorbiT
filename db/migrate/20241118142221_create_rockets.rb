class CreateRockets < ActiveRecord::Migration[7.1]
  def change
    create_table :rockets do |t|
      t.string :name
      t.text :content
      t.integer :number_passengers
      t.integer :price_per_day
      t.string :img_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
