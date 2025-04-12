class CreateWorkoutDays < ActiveRecord::Migration[8.0]
  def change
    create_table :workout_days do |t|
      t.string :day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
