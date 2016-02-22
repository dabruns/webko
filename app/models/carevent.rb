class Carevent < ActiveRecord::Base
  belongs_to :car
  belongs_to :user
  validates :title, :description, presence:  true
  validates_datetime :start_time, :before => :end_time, :after => :today
  validates_datetime :end_time, :after => :start_time, :after => :today
end

