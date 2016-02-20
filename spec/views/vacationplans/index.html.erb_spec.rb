require 'rails_helper'

RSpec.describe "vacationplans/index", type: :view do
  before(:each) do
    assign(:vacationplans, [
      Vacationplan.create!(
        :user => nil
      ),
      Vacationplan.create!(
        :user => nil
      )
    ])
  end

  it "renders a list of vacationplans" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
