require 'rails_helper'

RSpec.describe "roomplans/edit", type: :view do
  before(:each) do
    @roomplan = assign(:roomplan, Roomplan.create!(
      :room => nil,
      :usage => ""
    ))
  end

  it "renders the edit roomplan form" do
    render

    assert_select "form[action=?][method=?]", roomplan_path(@roomplan), "post" do

      assert_select "input#roomplan_room_id[name=?]", "roomplan[room_id]"

      assert_select "input#roomplan_usage[name=?]", "roomplan[usage]"
    end
  end
end
