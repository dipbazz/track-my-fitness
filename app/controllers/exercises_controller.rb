class ExercisesController < ApplicationController
  before_action :authenticate_user!

  def index
    @exercises = Exercise.all
    render json: @exercises
  end

  def create
    @exercise = Exercise.new(exercise_params)

    if @exercise.save
      render json: @exercise, status: :created
    else
      render json: { errors: @exercise.errors }, status: :unprocessable_entity
    end
  end

  def show
    @exercise = Exercise.find(params[:id])
    render json: @exercise
  end

  def update
    @exercise = Exercise.find(params[:id])

    if @exercise.update(exercise_params)
      render json: @exercise
    else
      render json: { errors: @exercise.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    head :ok
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name)
  end
end
