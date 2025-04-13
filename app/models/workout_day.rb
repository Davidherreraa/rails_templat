class WorkoutDay < ApplicationRecord
  belongs_to :user
  has_many :workout_day_exercises
  has_many :exercises, through: :workout_day_exercises
end

