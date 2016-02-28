require 'rails_helper'

RSpec.describe 'carevents/index', type: :view do
  before(:each) do
    assign(:carevents, [
             Carevent.create!(
               title: 'Title',
               description: 'MyText',
               car: nil
             ),
             Carevent.create!(
               title: 'Title',
               description: 'MyText',
               car: nil
             )
           ])
  end

  xit 'renders a list of carevents' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
