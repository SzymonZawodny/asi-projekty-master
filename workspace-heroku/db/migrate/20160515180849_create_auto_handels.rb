class CreateAutoHandels < ActiveRecord::Migration[5.0]
  def change
    create_table :auto_handels do |t|
      t.string :marka
      t.string :model
      t.string :cena

      t.timestamps
    end
  end
end
