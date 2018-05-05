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

ActiveRecord::Schema.define(version: 20180505191012) do

  create_table "archive_couriers", force: :cascade do |t|
    t.integer "Courier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.index ["Courier_id"], name: "index_archive_couriers_on_Courier_id"
  end

  create_table "archive_projects", force: :cascade do |t|
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.index ["project_id"], name: "index_archive_projects_on_project_id"
  end

  create_table "archive_release_couriers", force: :cascade do |t|
    t.integer "ReleaseCourier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.index ["ReleaseCourier_id"], name: "index_archive_release_couriers_on_ReleaseCourier_id"
  end

  create_table "archives", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "reference"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_archives_on_user_id"
  end

  create_table "couriers", force: :cascade do |t|
    t.string "reference"
    t.text "subject"
    t.string "sender"
    t.string "receiver"
    t.string "state"
    t.date "sentDate"
    t.date "receiveDate"
    t.string "order_number"
    t.integer "user_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.index ["project_id"], name: "index_couriers_on_project_id"
    t.index ["user_id"], name: "index_couriers_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "projet_code"
    t.date "duration"
    t.string "amount"
    t.string "public_partenership"
    t.string "private_partenership"
    t.string "project_situation"
    t.string "focal_point"
    t.string "object_project"
    t.string "procedure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "release_couriers", force: :cascade do |t|
    t.date "date"
    t.string "destination"
    t.string "reference"
    t.string "orderNumber"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_release_couriers_on_user_id"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "lName"
    t.string "fName"
    t.string "adress"
    t.string "phone"
    t.string "registration_number"
    t.string "skin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
