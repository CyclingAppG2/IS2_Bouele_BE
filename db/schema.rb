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

ActiveRecord::Schema.define(version: 20180403235049) do

  create_table "admins", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name", default: "", null: false
    t.string "username", default: "", null: false
    t.string "image"
    t.string "email", default: "", null: false
    t.integer "hoursperweek"
    t.text "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_admins_on_uid_and_provider", unique: true
  end

  create_table "attachments", force: :cascade do |t|
    t.string "route"
    t.string "comments"
    t.integer "event_id"
    t.integer "forum_thread_id"
    t.integer "forum_post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_attachments_on_event_id"
    t.index ["forum_post_id"], name: "index_attachments_on_forum_post_id"
    t.index ["forum_thread_id"], name: "index_attachments_on_forum_thread_id"
  end

  create_table "bans", force: :cascade do |t|
    t.string "log"
    t.string "reason"
    t.datetime "starttime"
    t.datetime "endtime"
    t.integer "user_id"
    t.integer "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_bans_on_admin_id"
    t.index ["user_id"], name: "index_bans_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.integer "cellphone"
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_contacts_on_location_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_voluntaries", force: :cascade do |t|
    t.integer "scorevoluntary"
    t.integer "scoreorganization"
    t.string "commentsvoluntary"
    t.string "commentsorganization"
    t.integer "event_id"
    t.integer "voluntary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_voluntaries_on_event_id"
    t.index ["voluntary_id"], name: "index_event_voluntaries_on_voluntary_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "duration"
    t.string "plus"
    t.integer "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_events_on_organization_id"
  end

  create_table "forum_posts", force: :cascade do |t|
    t.string "text"
    t.integer "user_id"
    t.integer "forum_thread_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["forum_thread_id"], name: "index_forum_posts_on_forum_thread_id"
    t.index ["user_id"], name: "index_forum_posts_on_user_id"
  end

  create_table "forum_threads", force: :cascade do |t|
    t.string "text"
    t.integer "user_id"
    t.integer "subforum_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subforum_id"], name: "index_forum_threads_on_subforum_id"
    t.index ["user_id"], name: "index_forum_threads_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.float "longitude"
    t.float "latitude"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_locations_on_event_id"
  end

  create_table "minicipalities", force: :cascade do |t|
    t.string "name"
    t.integer "department_id"
    t.integer "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_minicipalities_on_department_id"
    t.index ["organization_id"], name: "index_minicipalities_on_organization_id"
  end

  create_table "organization_categories", force: :cascade do |t|
    t.string "name"
    t.integer "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_organization_categories_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "category"
    t.string "NIT"
    t.string "mainaddress"
    t.string "branches"
    t.string "firm"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plus", force: :cascade do |t|
    t.string "name"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_plus_on_event_id"
  end

  create_table "reasons", force: :cascade do |t|
    t.string "name"
    t.integer "ban_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ban_id"], name: "index_reasons_on_ban_id"
  end

  create_table "subforums", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_subforums_on_admin_id"
  end

  create_table "theme_interests", force: :cascade do |t|
    t.string "themesinterest"
    t.integer "voluntary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["voluntary_id"], name: "index_theme_interests_on_voluntary_id"
  end

  create_table "user_polymorphisms", force: :cascade do |t|
    t.integer "user_id"
    t.integer "user_data_id"
    t.string "user_data_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_data_type", "user_data_id"], name: "index_user_polymorphisms_on_user_data_type_and_user_data_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name", default: "", null: false
    t.string "username", default: "", null: false
    t.string "image"
    t.string "email", default: "", null: false
    t.text "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  create_table "voluntaries", force: :cascade do |t|
    t.string "themesinterest"
    t.integer "score"
    t.date "birthday"
    t.string "gender"
    t.integer "cellphone"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
