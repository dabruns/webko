class Message < ActiveRecord::Base
      validates :title, presence: true
      validates :description, presence: true
      validates :date, presence: false
      validates :important, presence: false
end
