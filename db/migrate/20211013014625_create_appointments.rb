class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_time
      t.references :user, null: false, foreign_key: true
      t.references :trainer, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
