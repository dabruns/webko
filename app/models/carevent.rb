# Model fuer die Autoplanung
class Carevent < ActiveRecord::Base
  belongs_to :car
  belongs_to :user
  validates :title, :description, presence:  true
  validates_datetime :start_time, before: :end_time, after: :today
  validates_datetime :end_time, after.call (:start_time, :today)
end
