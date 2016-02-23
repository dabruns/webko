ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
  permit_params :email, :encrypted_password, :first_name, :last_name, :username

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

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
