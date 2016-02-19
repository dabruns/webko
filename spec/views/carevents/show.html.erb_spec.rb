require 'rails_helper'

RSpec.describe "carevents/show", type: :view do
  before(:each) do
    @carevent = assign(:carevent, Carevent.create!(
      :title => "Title",
      :description => "MyText",
      :car => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
