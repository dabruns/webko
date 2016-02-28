require 'rails_helper'

RSpec.describe Carevent, type: :model do
  before :each do
    @carevent = Carevent.new(description: 'beschreibung carevent')
  end

  describe '#new' do
    it 'nimmt alle Parameter fuer carevents an' do
      @carevent.should be_an_instance_of Carevent
    end
  end
end
