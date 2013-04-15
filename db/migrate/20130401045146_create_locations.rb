class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.references :scene

      t.timestamps
    end
    add_index :locations, :scene_id
  end
end
