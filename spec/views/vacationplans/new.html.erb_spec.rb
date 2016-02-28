require 'rails_helper'

RSpec.describe 'vacationplans/new', type: :view do
  before(:each) do
    assign(:vacationplan, Vacationplan.new(
                            user: nil
    ))
  end

  xit 'renders new vacationplan form' do
    render

    assert_select 'form[action=?][method=?]', vacationplans_path, 'post' do
      assert_select 'input#vacationplan_user_id[name=?]', 'vacationplan[user_id]'
    end
  end
end
