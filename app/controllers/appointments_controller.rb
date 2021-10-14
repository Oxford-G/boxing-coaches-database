class AppointmentsController < ApplicationController
  before_action :set_user
  before_action :set_appointment, only: [:destroy]

  def index
    @appointments = @user.appointments
    json_response(@appointments)
  end

  def create
    @appointment = @user.appointments.create!(appointment_params)
    json_response(@appointment, :created)
  end

  def destroy
    @appointment
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def appointment_params
    params.permit(:trainer_id, :user_id, :appointmentTime)
  end
end
