class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.text :content
      t.integer :author_id
      t.integer :partible_id
      t.string :partible_type

      t.timestamps
    end
  end
end
