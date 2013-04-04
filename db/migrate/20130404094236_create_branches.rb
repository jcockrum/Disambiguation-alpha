class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.integer :scene_id
      t.references :scene

      t.timestamps
    end
    add_index :branches, :scene_id
  end
end
