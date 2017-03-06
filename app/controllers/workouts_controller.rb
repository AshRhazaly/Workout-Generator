class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show,:edit,:update,:destroy]
  def index
    @workout = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    @workout.save
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @workout.destroy
  end

  private
  def set_workout
    @workout = Workout.find(params[:id])
  end

  def workout_params
    params.require(:workout).permit(:name)
  end
end
