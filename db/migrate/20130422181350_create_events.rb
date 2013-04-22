class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :location_id
      t.integer :scene_id

      t.timestamps
    end
  end
end
