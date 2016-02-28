require 'rails_helper'

RSpec.describe Car, type: :model do
  it 'Auto Anlegen' do
    brumbrum = Car.create!(name: 'Nissan Skyline')
    expect(Car.first).to eq(brumbrum)
  end
end
