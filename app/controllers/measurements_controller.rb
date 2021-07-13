class MeasurementsController < ApplicationController
  before_action :authenticate_user!

  def index
    @measurements = Measurement.includes(:exercise, :user)
    render json: @measurements
  end

  def create
    @measurement = Measurement.new(measurement_params) do |m|
      m.user = current_user
    end

    if @measurement.save
      render json: @measurement, status: :created
    else
      render json: { errors: @measurement.errors }, status: :unprocessable_entity
    end
  end

  def show
    @measurement = Measurement.find(params[:id])
    render json: @measurement
  end

  def update
    @measurement = Measurement.find(params[:id])

    if @measurement.update(measurement_params)
      render json: @measurement
    else
      render json: { errors: @measurement.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @measurement = Measurement.find(params[:id])
    @measurement.destroy
    head :ok
  end

  private

  def measurement_params
    params.require(:measurement).permit(:exercise_id, :quantity, :unit)
  end
end
