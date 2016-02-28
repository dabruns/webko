require 'rails_helper'

RSpec.describe 'vacationplans/show', type: :view do
  before(:each) do
    @vacationplan = assign(:vacationplan, Vacationplan.create!(
                                            user: nil
    ))
  end

  xit 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
  end
end
