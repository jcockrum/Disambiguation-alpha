class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :name
      t.boolean :branch
      t.references :universe

      t.timestamps
    end
    add_index :scenes, :universe_id
  end
end
