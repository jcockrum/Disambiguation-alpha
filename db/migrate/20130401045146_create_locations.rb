class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :universe_id
      t.references :universe

      t.timestamps
    end
    add_index :locations, :universe_id
  end
end
