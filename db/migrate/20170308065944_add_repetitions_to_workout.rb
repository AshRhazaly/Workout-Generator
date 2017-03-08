class AddRepetitionsToWorkout < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :repetitions, :integer
  end
end
