class CreateNpcs < ActiveRecord::Migration
  def change
    create_table :npcs do |t|
      t.integer :scene_id
      t.integer :character_id

      t.timestamps
    end
  end
end
