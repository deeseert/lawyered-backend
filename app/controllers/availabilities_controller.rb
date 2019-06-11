class AvailabilitiesController < ApplicationController

  def index
        @availabilities = Availability.all
        render json: @availabilities
  end

  def show
      @availability = Availability.find(params[:id])
      if @availability
          render json:@availability
      else
          render json: {error: 'Availability not found'}, status: 404
      end
  end

  def create
    @availability = Availability.new(appointment_params)
    if @availability.save
        render json: @availability
    else
        render json: {error: 'Unable to create availability'}, status: 400
    end
  end

  private

  def appointment_params
      params.require(:availability).permit(:day,:time,:lawyer_id,:duration)

  end
end
