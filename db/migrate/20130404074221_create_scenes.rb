class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :name
      t.string :story
      t.integer :act
      t.integer :chapter
      t.integer :storyarc_id
      t.references :storyarc

      t.timestamps
    end
    add_index :scenes, :storyarc_id
  end
end
