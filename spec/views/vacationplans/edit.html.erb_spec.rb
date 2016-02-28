require 'rails_helper'

RSpec.describe 'vacationplans/edit', type: :view do
  before(:each) do
    @vacationplan = assign(:vacationplan, Vacationplan.create!(
                                            user: nil
    ))
  end

  xit 'renders the edit vacationplan form' do
    render

    assert_select 'form[action=?][method=?]', vacationplan_path(@vacationplan), 'post' do
      assert_select 'input#vacationplan_user_id[name=?]', 'vacationplan[user_id]'
    end
  end
end
