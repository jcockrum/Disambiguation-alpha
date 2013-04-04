class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :name
      t.string :story
      t.integer :act
      t.integer :chapter
      t.integer :branch_id
      t.integer :storyarc_id
      t.references :storyarc
      t.references :branch

      t.timestamps
    end
    add_index :scenes, :storyarc_id
    add_index :scenes, :branch_id
  end
end
