# Model fuer die Raumplanung
class Roomplan < ActiveRecord::Base
  belongs_to :room
  belongs_to :user
  validates :usage, presence:  true
  validates_datetime :start_time, before: :end_time, after: :today
  validates_time :start_time, between: '8:00am'..'7:00pm'
  validates_time :end_time, between: '8:00am'..'7:00pm'
end
