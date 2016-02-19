require 'rails_helper'

RSpec.describe "roomplans/index", type: :view do
  before(:each) do
    assign(:roomplans, [
      Roomplan.create!(
        :room => nil,
        :usage => ""
      ),
      Roomplan.create!(
        :room => nil,
        :usage => ""
      )
    ])
  end

  it "renders a list of roomplans" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
