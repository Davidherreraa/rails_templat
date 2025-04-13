class HomeController < ApplicationController
  def index
    @workout_day = current_user.workout_days.includes(:exercises)
  end
end
