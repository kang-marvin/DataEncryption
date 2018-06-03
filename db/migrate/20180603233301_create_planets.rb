class CreatePlanets < ActiveRecord::Migration[5.1]
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :size
      t.string :rotation_time

      t.timestamps
    end
  end
end
