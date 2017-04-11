class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :Artiste
      t.string :Salle
      t.string :Style
      t.string :Date
      t.string :Description
      t.string :Photo

      t.timestamps
    end
  end
end
