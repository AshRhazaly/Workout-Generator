class AddWorkoutImageToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :workout_image, :string
  end
end
