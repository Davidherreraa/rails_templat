# app/controllers/workout_days_controller.rb
class WorkoutDaysController < ApplicationController
  before_action :authenticate_user!

  def show
    @workout_day = current_user.workout_days.find_or_create_by(day: params[:day])
    @exercises = Exercise.all
  end

  def update
    @workout_day = current_user.workout_days.find(params[:id])
    @workout_day.exercise_ids = params[:exercise_ids] || []
    redirect_to root_path(day: @workout_day.day), notice: "Exercises updated!"
    puts "Selected exercise_ids: #{params[:exercise_ids]}"

  end
  
end
