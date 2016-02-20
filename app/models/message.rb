class Message < ActiveRecord::Base
      validates :title, presence: true
      validates :description, presence: true
      validates :date, presence: true
      validates :important, presence: false

end
