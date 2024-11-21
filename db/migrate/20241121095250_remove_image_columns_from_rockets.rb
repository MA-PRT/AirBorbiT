class RemoveImageColumnsFromRockets < ActiveRecord::Migration[7.1]
  def change
    remove_column :rockets, :img_url, :string
    remove_column :rockets, :img_url2, :string
    remove_column :rockets, :img_url3, :string
  end
end
