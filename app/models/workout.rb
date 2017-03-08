class Workout < ApplicationRecord
  validates :name,:repetitions,  presence: true

  mount_uploader :workout_image, WorkoutImageUploader

end
