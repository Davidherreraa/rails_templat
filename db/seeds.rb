# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Chest Exercises
# Chest Exercises
Exercise.create(name: "Push-up", muscle_group: "Chest")
Exercise.create(name: "Bench Press", muscle_group: "Chest")
Exercise.create(name: "Dumbbell Chest Fly", muscle_group: "Chest")
Exercise.create(name: "Incline Push-up", muscle_group: "Chest")
Exercise.create(name: "Cable Crossover", muscle_group: "Chest")

# Leg Exercises
Exercise.create(name: "Squat", muscle_group: "Legs")
Exercise.create(name: "Lunges",  muscle_group: "Legs")
Exercise.create(name: "Leg Press", muscle_group: "Legs")
Exercise.create(name: "Step-ups", muscle_group: "Legs")
Exercise.create(name: "Hamstring Curl", muscle_group: "Legs")

# Biceps Exercises
Exercise.create(name: "Bicep Curl", muscle_group: "Biceps")
Exercise.create(name: "Hammer Curl", muscle_group: "Biceps")
Exercise.create(name: "Barbell Curl", muscle_group: "Biceps")
Exercise.create(name: "Resistance Band Curl", muscle_group: "Biceps")

# Triceps Exercises
Exercise.create(name: "Tricep Dip", muscle_group: "Triceps")
Exercise.create(name: "Overhead Tricep Extension", muscle_group: "Triceps")
Exercise.create(name: "Tricep Pushdown", muscle_group: "Triceps")
Exercise.create(name: "Diamond Push-up", muscle_group: "Triceps")

# Shoulder Exercises
Exercise.create(name: "Shoulder Press", muscle_group: "Shoulders")
Exercise.create(name: "Lateral Raise", muscle_group: "Shoulders")
Exercise.create(name: "Front Raise", muscle_group: "Shoulders")
Exercise.create(name: "Pike Push-up", muscle_group: "Shoulders")

# Back Exercises
Exercise.create(name: "Pull-up",  muscle_group: "Back")
Exercise.create(name: "Bent-over Row", muscle_group: "Back")
Exercise.create(name: "Lat Pulldown", muscle_group: "Back")
Exercise.create(name: "Superman Hold", muscle_group: "Back")

