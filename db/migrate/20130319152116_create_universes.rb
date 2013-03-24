class CreateUniverses < ActiveRecord::Migration
  def change
    create_table :universes do |t|
      t.string :name
      t.integer :user_id
      t.references :users

      t.timestamps
    end
    add_index(:universes, :user_id)
  end
end
