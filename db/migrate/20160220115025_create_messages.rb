# Die Tabelle fuer die Nachrichten am Schwarzen Brett
class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.text :description
      t.date :date
      t.boolean :important
      t.timestamps null: false
    end
  end
end
