class LawyersController < ApplicationController

  def index
    lawyers = Lawyer.all
    render json: lawyers
  end

  def show
    lawyer = Lawyer.find_by(id: params[:id])
    render json: lawyer
  end

  def appointments
    lawyer = Lawyer.find_by(id: params[:id])
    render json: lawyer.appointments
  end

  def availabilities
    lawyer = Lawyer.find_by(id: params[:id])
    render json: lawyer.availabilities
  end

end
