class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:create, :destroy]

  def index
    @appointments = Appointment.all
    json_response(@appointments)
  end

  def create
    @appointment = Appointment.create!(appointment_params)
    json_response(@appointment, :created)
  end

  def destroy
    @appointment
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.permit(:trainer_id, :user_id, :appointment_time, :status)
  end

end
