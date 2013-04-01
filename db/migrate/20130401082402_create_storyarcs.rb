class CreateStoryarcs < ActiveRecord::Migration
  def change
    create_table :storyarcs do |t|
      t.string :name
      t.integer :universe_id
      t.references :universe

      t.timestamps
    end
    add_index :storyarcs, :universe_id
  end
end
