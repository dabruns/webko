# Der Autokalender
class CreateCarevents < ActiveRecord::Migration
  def change
    create_table :carevents do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.references :car, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
