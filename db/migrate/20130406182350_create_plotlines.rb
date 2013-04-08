class CreatePlotlines < ActiveRecord::Migration
  def change
    create_table :plotlines do |t|
      t.integer :scene_id
      t.integer :branch_id

      t.timestamps
    end
  end
end
