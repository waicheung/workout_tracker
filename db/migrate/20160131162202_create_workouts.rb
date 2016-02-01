class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :set
      t.integer :rep
      t.float :weight
      t.date :day

      t.timestamps null: false
    end
  end
end
