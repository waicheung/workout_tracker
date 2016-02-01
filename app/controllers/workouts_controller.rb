class WorkoutsController < ApplicationController
  def new
    @workout = Workout.new
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def index
    @workout = Workout.all
  end

  def create
    @workout = Workout.new(user_params)

    if @workout.save
      redirect_to @workout
    else
      render 'new'
    end
  end


  private

    def user_params
      params.require(:workout).permit(:name, :set, :rep, :weight, :day)
    end

end
