class CreateExerciseInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_instances do |t|
      t.integer :exercise_id
      t.integer :workout_id
      t.integer :weight_lbs
      t.integer :sets
      t.integer :reps
      t.integer :exercise_rating
      t.string :notes
      t.timestamps
    end
  end
end
