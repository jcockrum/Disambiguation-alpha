class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :name
      t.string :location
      t.integer :act
      t.integer :chapter
      t.references :story

      t.timestamps
    end
    add_index :scenes, :story_id
  end
end
