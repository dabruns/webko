# Tabelle um Kommentare zu den Nachrichten am schwarzen Brett zu schreiben
class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :message_id
      t.text :text
      t.text :user
      t.references :message
      t.timestamps null: false
    end
  end
end
