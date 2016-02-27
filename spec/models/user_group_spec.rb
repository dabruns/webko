require 'rails_helper'

RSpec.describe UserGroup, type: :model do
  before :each do
    @user_group=UserGroup.new()
  end

  describe "#new" do
    it "nimmt alle Parameter an" do
      @user_group.should be_an_instance_of UserGroup
    end
  end
end
