require 'rails_helper'

RSpec.describe Message, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before :each do
    @message=Message.new(title: 'title', description: 'beispieltext')
  end

  describe "#new" do
    it "nimmt alle Parameter an" do
      @message.should be_an_instance_of Message
    end
  end
end
