class AppointmentsController < ApplicationController

  def index
        appointments = Appointment.where(lawyer_id: params[:id])
        render json: appointments
  end

  def show
      appointment = Appointment.find_by(id: params[:id])
      if appointment
          render json:appointment
      else
          render json: {error: 'Appointment not found'}, status: 404
      end
  end

  def create
    appointment = Appointment.new(appointment_params)
    if appointment.save
        render json: appointment
    else
        render json: {error: 'Unable to create appointment'}, status: 400
    end
  end

  def destroy
    appointment = Appointment.find_by(id: params[:id])
      if appointment
        appointment.destroy
        render json: {message: "Appointment successfully deleted."}
      else
        render json: {error: "Appointment not found!"}, status: 404
      end
  end

  private

  def appointment_params
      params.require(:appointment).permit(:client_id, :lawyer_id, :date, :time)

  end
end
