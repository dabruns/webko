require 'rails_helper'

RSpec.describe "roomplans/show", type: :view do
  before(:each) do
    @roomplan = assign(:roomplan, Roomplan.create!(
      :room => nil,
      :usage => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
