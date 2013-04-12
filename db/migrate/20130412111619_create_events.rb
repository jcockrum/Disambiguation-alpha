class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :scene_id
      t.integer :location_id

      t.timestamps
    end
  end
end
