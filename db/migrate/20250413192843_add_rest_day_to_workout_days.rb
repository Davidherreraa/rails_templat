class AddRestDayToWorkoutDays < ActiveRecord::Migration[8.0]
  def change
    add_column :workout_days, :rest_day, :boolean
  end
end
