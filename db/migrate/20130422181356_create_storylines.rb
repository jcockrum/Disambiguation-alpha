class CreateStorylines < ActiveRecord::Migration
  def change
    create_table :storylines do |t|
      t.integer :story_id
      t.integer :scene_id

      t.timestamps
    end
  end
end
