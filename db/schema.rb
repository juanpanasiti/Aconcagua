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

ActiveRecord::Schema.define(version: 20160710035020) do

  create_table "careers", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "name"
    t.string   "file_number"
    t.string   "starting_year"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["student_id"], name: "index_careers_on_student_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "name"
    t.string   "lastname"
    t.string   "document"
    t.datetime "birthdate"
    t.text     "about_me"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_profiles_on_student_id"
  end

  create_table "states", force: :cascade do |t|
    t.integer  "subject_id"
    t.string   "name"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_states_on_subject_id"
  end

  create_table "students", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

  create_table "subjects", force: :cascade do |t|
    t.integer  "year_id"
    t.string   "name"
    t.string   "semester"
    t.boolean  "elective"
    t.boolean  "promotable"
    t.text     "footnote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["year_id"], name: "index_subjects_on_year_id"
  end

  create_table "years", force: :cascade do |t|
    t.integer  "career_id"
    t.integer  "elective_hours"
    t.integer  "number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["career_id"], name: "index_years_on_career_id"
  end

end
