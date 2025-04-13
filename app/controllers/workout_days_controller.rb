# app/controllers/workout_days_controller.rb
class WorkoutDaysController < ApplicationController
  before_action :authenticate_user!

  def show
    @workout_day = current_user.workout_days.find_or_create_by(day: params[:day])
    @exercises = Exercise.all
    @grouped_exercises = @exercises.group_by(&:muscle_group)
  end

  def update
    @workout_day = current_user.workout_days.find(params[:id])
    @workout_day.rest_day = params[:workout_day][:rest_day] == "1"
  
    # Only update exercises if not a rest day
    if !@workout_day.rest_day
      @workout_day.exercise_ids = params[:exercise_ids] || []
    else
      @workout_day.exercises.clear
    end
  
    @workout_day.save
    redirect_to root_path, notice: "Workout updated!"
  end
  

end
