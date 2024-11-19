class AddImgUrlToRockets < ActiveRecord::Migration[7.1]
  def change
    add_column :rockets, :img_url2, :string
    add_column :rockets, :img_url3, :string
  end
end
