class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :trainer

  validates_presence_of :appointmentTime
end
