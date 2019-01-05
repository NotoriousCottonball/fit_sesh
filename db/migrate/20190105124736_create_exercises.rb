class CreateExercises < ActiveRecord::Migration[5.2]
  create_table :exercises do |t|
      t.string :name
      t.string :description
      t.integer :rating
    end
  end
end
