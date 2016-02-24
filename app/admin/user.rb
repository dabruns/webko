ActiveAdmin.register User do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :email, :encrypted_password, :first_name, :last_name, :username, :password, :password_confirmation

  #  create_table "users", force: :cascade do |t|
  #    t.string   "email",               default: "", null: false
  #    t.string   "encrypted_password",  default: "", null: false
  #    t.datetime "remember_created_at"
  #    t.integer  "sign_in_count",       default: 0,  null: false
  #    t.datetime "current_sign_in_at"
  #    t.datetime "last_sign_in_at"
  #    t.string   "current_sign_in_ip"
  #    t.string   "last_sign_in_ip"
  #    t.datetime "created_at",                       null: false
  #    t.datetime "updated_at",                       null: false
  #    t.string   "first_name"
  #    t.string   "last_name"
  #    t.string   "username"

  index do
    column 'Benutzername', :username
    column 'Vorname', :first_name
    column 'Nachname', :last_name
    column :email
    column 'Password', :encrypted_password
    column 'Anzahl der Anmeldungen', :sign_in_count
    column 'Momentan eingelogt um', :current_sign_in_at
    column 'Zuletzt eingelogt am', :last_sign_in_at
    actions
  end

  # Die edit formulare bearbeiten

  form do |f|
    f.inputs 'Benutzer erstellen' do
      f.inputs :username
      f.inputs :first_name
      f.inputs :last_name
      f.inputs :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
