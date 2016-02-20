class Roomplan < ActiveRecord::Base
  belongs_to :room
  belongs_to :user
  validates :usage, presence:  true
end
