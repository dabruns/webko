# Model fuer die Gruppen welche ein Benutzer haben kann
class Group < ActiveRecord::Base
  has_many :user_groups
  has_many :users, through: :user_groups
end
