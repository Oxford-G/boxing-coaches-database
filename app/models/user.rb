class User < ApplicationRecord
  has_secure_password

  has_many :appointments, dependent: :destroy
  validates_presence_of :name, :email, :password, :password_confirmation
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates_uniqueness_of :name, :email
end
