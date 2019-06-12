class AvailabilitiesController < ApplicationController

  def index
        availabilities = Availability.where(lawyer_id: params[:id])
        render json: availabilities
  end

  def show
      availability = Availability.find_by(id: params[:id])
      if availability
          render json: availability
      else
          render json: {error: 'Availability not found'}, status: 404
      end
  end

  def create
    availability = Availability.new(availability_params)
    if availability.save
        render json: availability
    else
        render json: {error: 'Unable to create availability'}, status: 400
    end
  end

  private

  def availability_params
      params.require(:availability).permit(:day, :time, :duration, :lawyer_id)
  end
end
