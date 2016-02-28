require 'rails_helper'

RSpec.describe 'carevents/new', type: :view do
  before(:each) do
    assign(:carevent, Carevent.new(
                        title: 'MyString',
                        description: 'MyText',
                        car: nil
    ))
  end

  xit 'renders new carevent form' do
    render

    assert_select 'form[action=?][method=?]', carevents_path, 'post' do
      assert_select 'input#carevent_title[name=?]', 'carevent[title]'

      assert_select 'textarea#carevent_description[name=?]', 'carevent[description]'

      assert_select 'input#carevent_car_id[name=?]', 'carevent[car_id]'
    end
  end
end
