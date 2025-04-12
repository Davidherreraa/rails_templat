# app/controllers/workout_days_controller.rb
class WorkoutDaysController < ApplicationController
  before_action :authenticate_user!

  def show
    @workout_day = current_user.workout_days.find_or_create_by(day: params[:day])
    @exercises = Exercise.all
  end

  def update
    @workout_day = current_user.workout_days.find(params[:id])
    @workout_day.workouts.destroy_all
    params[:exercise_ids]&.each do |id|
      @workout_day.workouts.create(exercise_id: id)
    end
    redirect_to root_path, notice: "Workout updated for #{@workout_day.day}!"
  end
end
