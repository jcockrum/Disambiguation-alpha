class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.integer :storyarc_id
      t.references :storyarc

      t.timestamps
    end
    add_index :stories, :storyarc_id
  end
end
