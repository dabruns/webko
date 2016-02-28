require 'rails_helper'

RSpec.describe Roomplan, type: :model do
  before :each do
    @roomplan = Roomplan.new(usage: 'beispiel nutzung')
  end

  describe '#new' do
    it 'nimmt Parameter fuer Roomplan an' do
      @roomplan.should be_an_instance_of Roomplan
    end
  end
end
