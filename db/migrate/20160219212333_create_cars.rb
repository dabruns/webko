# Die Autos Tabelle
class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
