FactoryGirl.define do
  factory :user do
    username 'Benutzer'
    first_name 'Team'
    last_name 'Benutzer'
    email 'edv@multifit.info'
    password '12345678'
    password_confirmation '12345678'
  end

  factory :admin do
    username 'Benutzer'
    first_name 'Team'
    last_name 'Benutzer'
    email 'edv@multifit.info'
    password '12345678'
    password_confirmation '12345678'
    admin true
  end
end
