class ChangeColumnsNames < ActiveRecord::Migration[6.1]
  def change
    rename_column :trainers, :fighting_style, :fightingStyle
    rename_column :trainers, :trainer_img, :trainerImg
    rename_column :appointments, :appointment_time, :appointmentTime
    remove_column :appointments, :status
  end
end
