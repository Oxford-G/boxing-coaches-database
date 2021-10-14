class CreateTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :fighting_style
      t.text :description
      t.string :trainer_img

      t.timestamps
    end
  end
end
