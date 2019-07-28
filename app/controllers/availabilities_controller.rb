class AvailabilitiesController < ApplicationController

  def index
        availabilities = Availability.where(lawyer_id: params[:id])
        return availabilities
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

  def book_availability
    availability = Availability.find_by(id: params[:id])
    if availability
      availability.booked = true
      availability.save
      render json: availability
    else
      render json: {error: "Sorry bro, couldn't find it for some reason...."}, status: 404
    end
  end

  def make_appointment_available_again
    availability = Availability.find_by(id: params[:id])
    if availability
      availability.booked = nil
      availability.save
      render json: availability
    else
      render json: {error: "whatdfefghert...."}, status: 404
    end
  end

  private

  def availability_params
      params.require(:availability).permit(:day, :time, :duration, :lawyer_id)
  end
end
