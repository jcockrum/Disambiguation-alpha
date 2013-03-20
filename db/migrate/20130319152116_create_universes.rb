class CreateUniverses < ActiveRecord::Migration
  def change
    create_table :universes do |t|
      t.string :name
      t.integer :users_id
      t.references :users

      t.timestamps
    end
    add_index :universes, :users_id
  end
end
