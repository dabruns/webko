# Model fuer die Zuordnung der Benutzer zu Gruppen
class UserGroup < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
end
