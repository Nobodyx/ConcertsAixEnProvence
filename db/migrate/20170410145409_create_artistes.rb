class CreateArtistes < ActiveRecord::Migration[5.0]
  def change
    create_table :artistes do |t|
      t.string :pseudo
      t.integer :age
      t.integer :taille
      t.string :description

      t.timestamps
    end
  end
end
