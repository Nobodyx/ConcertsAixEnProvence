class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.references :artiste
      t.string :salle
      t.string :style
      t.string :date
      t.string :description

      t.timestamps
    end
  end
end
