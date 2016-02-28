require 'rails_helper'

RSpec.feature 'Log in',
              'Log in als regestrierter "user",
               Wir wollen uns einlogen
               um die Funktionen der webseite zu nutzen' do
  context 'auf der Startseite' do
    let(:user) { FactoryGirl.create(:user) }

    before(:each) do
      visit root_path
      click_link 'Login'
      fill_in 'user_login', with: user.username
      fill_in 'user_password', with: '12345678'
      click_button 'Log in'
    end

    scenario 'Login' do
      expect(page).to have_content "Eingeloggt als: #{user.first_name}" + ' ' + user.last_name.to_s
    end

    scenario 'Logout' do
      click_link 'Logout'
      expect(page).to_not have_content "Eingeloggt als: #{user.first_name}" + ' ' + user.last_name.to_s
      expect(page).to have_content 'Login'
    end
  end
end
