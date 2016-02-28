require 'rails_helper'

RSpec.describe 'messages/new.html.erb', type: :view do
  before :each do
    @message = Message.new(title: 'title', description: 'beispieltext')
  end

  describe '#new' do
    it 'nimmt alle Parameter fuer ein message Objekt an' do
      @message.should be_an_instance_of Message
    end
  end
end
