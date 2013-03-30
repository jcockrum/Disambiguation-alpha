class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :discipline
      t.string :approach
      t.string :efficacy
      t.string :regard
      t.integer :universe_id
      t.references :universe

      t.timestamps
    end
    add_index :characters, :universe_id
  end
end
