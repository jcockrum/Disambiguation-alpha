class CreatePhysics < ActiveRecord::Migration
  def change
    create_table :physics do |t|
      t.string :position
      t.string :size
      t.float :weight
      t.string :energy
      t.string :force
      t.integer :event_id
      t.references :event

      t.timestamps
    end
    add_index :physics, :event_id
  end
end
