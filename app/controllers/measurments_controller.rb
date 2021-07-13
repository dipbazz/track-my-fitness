class MeasurmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @measurments = Measurment.all
    render json: @measurments
  end

  def create
    @measurment = Measurment.new(measurment_params)

    if @measurment.save
      render json: @measurment, status: :ok
    else
      render json: { errors: @measurment.errors }, status: :unprocessable_entity
    end
  end

  def show
    @measurment = Measurment.find(params[:id])
    render json: @measurment
  end

  def update
    @measurment = Measurment.find(params[:id])

    if @measurment.update(measurment_params)
      render json: @measurment
    else
      render json: { errors: @measurment.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @measurment = Measurment.find(params[:id])
    @measurment.destroy
    head :ok
  end

  private

  def measurment_params
    params.require(:measurment).permit(:name)
  end
end
