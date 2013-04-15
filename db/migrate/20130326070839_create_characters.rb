class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :discipline
      t.string :approach
      t.string :efficacy
      t.string :regard
      t.references :scene

      t.timestamps
    end
    add_index :characters, :scene_id
  end
end
