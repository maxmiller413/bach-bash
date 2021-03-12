class AddColumnToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :zip_code, :string
    add_column :places, :rating, :string
    add_column :places, :url, :string
    add_column :places, :img_url, :string
  end
end
