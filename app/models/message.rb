# Model fuer die Nachrichten auf dem Schwarzen Brett
# Enthaelt Validierung
class Message < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: false
  validates :important, presence: false
end
