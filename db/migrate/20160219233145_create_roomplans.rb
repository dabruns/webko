class CreateRoomplans < ActiveRecord::Migration
  def change
    create_table :roomplans do |t|
      t.references :user, index: true, foreign_key: true
      t.references :room, index: true, foreign_key: true
      t.text :usage
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
