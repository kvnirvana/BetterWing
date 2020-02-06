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

ActiveRecord::Schema.define(version: 2020_01_30_121950) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "professions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "superadmin_role", default: false
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "clinic_name"
    t.string "clinic_address"
    t.string "clinic_zip_code"
    t.string "clinic_municipality"
    t.string "clinic_about"
    t.string "clinic_mail"
    t.string "clinic_phone"
    t.string "clinic_website"
    t.string "clinic_city"
    t.string "practitioner_first_name"
    t.string "practitioner_last_name"
    t.string "practitioner_description"
    t.string "practitioner_mail"
    t.string "practitioner_phone"
    t.string "practitioner_website"
    t.string "practitioner_professions"
    t.string "practitioner_specialities"
    t.string "practitioner_service_name"
    t.string "practitioner_service_description"
    t.string "practitioner_service_minutes"
    t.string "practitioner_service_price"
    t.string "practitioner_education_name"
    t.string "practitioner_education_place"
    t.string "practitioner_education_year"
    t.string "practitioner_memberships"
    t.string "practitioner_awards_name"
    t.string "practitioner_awards_year"
    t.integer "gender"
    t.boolean "public_health_insurance", default: false
    t.string "name"
    t.string "professions"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
