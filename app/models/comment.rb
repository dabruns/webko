class Comment < ActiveRecord::Base
  belongs_to :message
  # permit_params :message_id, :text, :user, :message, :null
end
