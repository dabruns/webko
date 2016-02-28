# Model fuer die Urlaubsplanung
class Vacationplan < ActiveRecord::Base
  belongs_to :user
  validates_datetime :start_time, before: :end_time, after: :today
end
