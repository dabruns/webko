class Carevent < ActiveRecord::Base
  belongs_to :car
  belongs_to :user
  validates :title, :description, presence:  true
end
