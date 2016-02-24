require 'rails_helper'

RSpec.describe 'roomplans/new', type: :view do
  before(:each) do
    assign(:roomplan, Roomplan.new(
                        room: nil,
                        usage: ''
    ))
  end

  it 'renders new roomplan form' do
    render

    assert_select 'form[action=?][method=?]', roomplans_path, 'post' do
      assert_select 'input#roomplan_room_id[name=?]', 'roomplan[room_id]'

      assert_select 'input#roomplan_usage[name=?]', 'roomplan[usage]'
    end
  end
end
