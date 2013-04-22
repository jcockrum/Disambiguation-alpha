class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.integer :chapter
      t.references :universe

      t.timestamps
    end
    add_index :stories, :universe_id
  end
end
