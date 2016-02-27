require 'rails_helper'

RSpec.describe Group, type: :model do
  before :each do
    @group=Group.new(deskription: 'beispieltext fuer Gruppen')
  end

  describe "#new" do
    it "nimmt Parameter an fuer Gruppen" do
      @group.should be_an_instance_of Group
    end
  end
end
