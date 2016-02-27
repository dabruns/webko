require 'rails_helper'

RSpec.describe Role, type: :model do
  before :each do
    @role=Role.new()
  end

  describe "#new" do
    it "nimmt Parameter fuer Rollen an" do
      @role.should be_an_instance_of Role
    end
  end
end
