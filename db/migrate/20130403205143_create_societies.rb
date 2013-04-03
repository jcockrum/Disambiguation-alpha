class CreateSocieties < ActiveRecord::Migration
  def change
    create_table :societies do |t|
      t.string :name
      t.string :structure
      t.string :source
      t.string :social
      t.string :religion
      t.integer :event_id
      t.references :event

      t.timestamps
    end
    add_index :societies, :event_id
  end
end
