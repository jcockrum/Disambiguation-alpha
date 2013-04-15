class CreateSocieties < ActiveRecord::Migration
  def change
    create_table :societies do |t|
      t.string :name
      t.string :social_material
      t.string :social_interaction
      t.string :economics
      t.references :scene

      t.timestamps
    end
    add_index :societies, :scene_id
  end
end
