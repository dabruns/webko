require 'rails_helper'

RSpec.describe "carevents/edit", type: :view do
  before(:each) do
    @carevent = assign(:carevent, Carevent.create!(
      :title => "MyString",
      :description => "MyText",
      :car => nil
    ))
  end

  it "renders the edit carevent form" do
    render

    assert_select "form[action=?][method=?]", carevent_path(@carevent), "post" do

      assert_select "input#carevent_title[name=?]", "carevent[title]"

      assert_select "textarea#carevent_description[name=?]", "carevent[description]"

      assert_select "input#carevent_car_id[name=?]", "carevent[car_id]"
    end
  end
end
