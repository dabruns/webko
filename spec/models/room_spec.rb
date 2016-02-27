require 'rails_helper'

RSpec.describe Room, type: :model do
  before :each do
    @room=Room.new()
  end

  describe "#new" do
    it "nimmt Parameter fuer Room an" do
      @room.should be_an_instance_of Room
    end
  end
end
