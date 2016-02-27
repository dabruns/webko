require 'rails_helper'

RSpec.describe Vacationplan, type: :model do
  before :each do
    @vacationplan=Vacationplan.new()
  end

  describe "#new" do
    it "erstellt neues Objekt" do
      @vacationplan.should be_an_instance_of Vacationplan
    end
  end
end
