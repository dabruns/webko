# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_160_223_184_316) do
  create_table 'active_admin_comments', force: :cascade do |t|
    t.string   'namespace'
    t.text     'body'
    t.string   'resource_id',   null: false
    t.string   'resource_type', null: false
    t.integer  'author_id'
    t.string   'author_type'
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  add_index 'active_admin_comments', %w(author_type author_id), name: 'index_active_admin_comments_on_author_type_and_author_id'
  add_index 'active_admin_comments', ['namespace'], name: 'index_active_admin_comments_on_namespace'
  add_index 'active_admin_comments', %w(resource_type resource_id), name: 'index_active_admin_comments_on_resource_type_and_resource_id'

  create_table 'carevents', force: :cascade do |t|
    t.integer  'user_id'
    t.string   'title'
    t.text     'description'
    t.datetime 'start_time'
    t.datetime 'end_time'
    t.integer  'car_id'
    t.datetime 'created_at',  null: false
    t.datetime 'updated_at',  null: false
  end

  add_index 'carevents', ['car_id'], name: 'index_carevents_on_car_id'
  add_index 'carevents', ['user_id'], name: 'index_carevents_on_user_id'

  create_table 'cars', force: :cascade do |t|
    t.string   'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'comments', force: :cascade do |t|
    t.integer  'message_id'
    t.text     'text'
    t.text     'user'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'groups', force: :cascade do |t|
    t.string   'title'
    t.text     'deskription'
    t.datetime 'created_at',  null: false
    t.datetime 'updated_at',  null: false
  end

  create_table 'messages', force: :cascade do |t|
    t.string   'title'
    t.text     'description'
    t.date     'date'
    t.boolean  'important'
    t.datetime 'created_at',  null: false
    t.datetime 'updated_at',  null: false
  end

  create_table 'roles', force: :cascade do |t|
    t.string   'name'
    t.integer  'resource_id'
    t.string   'resource_type'
    t.datetime 'created_at'
    t.datetime 'updated_at'
  end

  add_index 'roles', %w(name resource_type resource_id), name: 'index_roles_on_name_and_resource_type_and_resource_id'
  add_index 'roles', ['name'], name: 'index_roles_on_name'

  create_table 'roomplans', force: :cascade do |t|
    t.integer  'user_id'
    t.integer  'room_id'
    t.text     'usage'
    t.datetime 'start_time'
    t.datetime 'end_time'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_index 'roomplans', ['room_id'], name: 'index_roomplans_on_room_id'
  add_index 'roomplans', ['user_id'], name: 'index_roomplans_on_user_id'

  create_table 'rooms', force: :cascade do |t|
    t.string   'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'user_groups', force: :cascade do |t|
    t.integer  'user_id'
    t.integer  'group_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_index 'user_groups', ['group_id'], name: 'index_user_groups_on_group_id'
  add_index 'user_groups', ['user_id'], name: 'index_user_groups_on_user_id'

  create_table 'users', force: :cascade do |t|
    t.string   'email',               default: '', null: false
    t.string   'encrypted_password',  default: '', null: false
    t.datetime 'remember_created_at'
    t.integer  'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string   'current_sign_in_ip'
    t.string   'last_sign_in_ip'
    t.datetime 'created_at',                       null: false
    t.datetime 'updated_at',                       null: false
    t.string   'first_name'
    t.string   'last_name'
    t.string   'username'
  end

  add_index 'users', ['email'], name: 'index_users_on_email', unique: true
  add_index 'users', ['username'], name: 'index_users_on_username', unique: true

  create_table 'users_roles', id: false, force: :cascade do |t|
    t.integer 'user_id'
    t.integer 'role_id'
  end

  add_index 'users_roles', %w(user_id role_id), name: 'index_users_roles_on_user_id_and_role_id'

  create_table 'vacationplans', force: :cascade do |t|
    t.integer  'user_id'
    t.datetime 'start_time'
    t.datetime 'end_time'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_index 'vacationplans', ['user_id'], name: 'index_vacationplans_on_user_id'
end
