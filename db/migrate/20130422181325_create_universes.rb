class CreateUniverses < ActiveRecord::Migration
  def change
    create_table :universes do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
