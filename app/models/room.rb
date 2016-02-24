# Model von den Raeumen die der Raumplankalender benoetigt
class Room < ActiveRecord::Base
  has_many :roomplans
end
