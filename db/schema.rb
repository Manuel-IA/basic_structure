# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_09_135122) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignaments", force: :cascade do |t|
    t.string "owner_name", null: false
    t.string "phone_number", null: false
    t.string "email", null: false
    t.string "address"
    t.integer "vin_number"
    t.integer "po"
    t.string "plate"
    t.boolean "deductible"
    t.boolean "insurance_aproval"
    t.string "color"
    t.integer "status_id"
    t.string "make"
    t.string "model"
    t.integer "year"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignaments_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "assignament_id", null: false
    t.index ["user_id", "assignament_id"], name: "index_assignaments_users_on_user_id_and_assignament_id"
  end

  create_table "insurances", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "contact_name", null: false
    t.string "color", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insurances_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "insurance_id", null: false
    t.index ["user_id", "insurance_id"], name: "index_insurances_users_on_user_id_and_insurance_id", unique: true
  end

  create_table "user_details", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "role_id"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.text "additional_info"
    t.integer "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_details_on_role_id"
    t.index ["status_id"], name: "index_user_details_on_status_id"
    t.index ["user_id"], name: "index_user_details_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "user_details", "users"
end
