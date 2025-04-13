class Exercise < ApplicationRecord
  has_many :workout_day_exercises
  has_many :workout_days, through:  :workout_day_exercises
end


