require 'rails_helper'

RSpec.feature 'Log in',
              'Log in als regestrierter "user",
               Wir wollen uns einlogen
               um die Funktionen der webseite zu nutzen' do
  context 'auf der Startseite' do
    let(:user) { FactoryGirl.create(:user) }

    before(:each) do
      sign_in user
    end

    scenario 'Login' do
      expect(page).to have_content "Welcome, #{user.email}"
    end

    scenario 'Logout' do
      click_link user.email
      expect(page).to_not have_content "Welcome, #{user.email}"
      expect(page).to have_content 'Sign in'
    end
  end
end
