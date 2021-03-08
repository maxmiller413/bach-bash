class CreatePlaceCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :place_collections do |t|
      t.belongs_to :collection, null: false, foreign_key: true
      t.belongs_to :place, null: false, foreign_key: true
      t.string :name
      t.datetime :date

      t.timestamps
    end
  end
end
