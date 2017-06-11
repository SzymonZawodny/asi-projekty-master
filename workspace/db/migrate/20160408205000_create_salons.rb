class CreateSalons < ActiveRecord::Migration[5.0]
  def change
    create_table :salons do |t|
      t.string :nazwa
      t.string :rocznik
      t.string :przebieg
      t.string :cena

      t.timestamps
    end
  end
end
