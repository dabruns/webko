class Message < ActiveRecord::Base
      has_many :comments
      validates :title, presence: true
      validates :description, presence: true
      validates :date, presence: false
      validates :important, presence: false
end
