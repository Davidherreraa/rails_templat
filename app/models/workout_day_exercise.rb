class WorkoutDayExercise < ApplicationRecord
  belongs_to :workout_day
  belongs_to :exercise
end
