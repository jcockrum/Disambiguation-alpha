class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :location_id
      t.references :location

      t.timestamps
    end
    add_index :events, :location_id
  end
end
