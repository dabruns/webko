# Model von den Autos
class Car < ActiveRecord::Base
  has_many :carevents
end
