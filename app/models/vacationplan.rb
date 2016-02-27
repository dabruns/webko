# Model fuer die Urlaubsplanung
class Vacationplan < ActiveRecord::Base
  belongs_to :user
  validates_datetime :start_time, before: :end_time, after: :today
  validates_datetime :end_time, after.call (:start_time, :today)
end
