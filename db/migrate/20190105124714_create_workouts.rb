class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.datetime :date_time, :default => Time.now
      t.integer :duration_minutes
      t.integer :user_id
      t.boolean :share_status, :default => false
      t.timestamps
    end
  end
end
