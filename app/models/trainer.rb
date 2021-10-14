class Trainer < ApplicationRecord
  has_many :appointments, dependent: :destroy

  validates_presence_of :name, :description, :fightingStyle, :trainerImg
end
