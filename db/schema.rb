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

ActiveRecord::Schema[7.0].define(version: 2023_05_23_090037) do
  create_table "computers", force: :cascade do |t|
    t.string "user_id", null: false
    t.string "cpu_name"
    t.string "gpu_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "mb_name"
    t.string "memory_name"
    t.string "ssd_name"
    t.string "hdd_name"
    t.string "case_name"
    t.string "cooler_name"
    t.string "power_name"
  end

  create_table "gadgets", force: :cascade do |t|
    t.string "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "mouse_items"
    t.string "keyboard_items"
    t.string "monitor_items"
    t.string "audio_items"
    t.string "pad_items"
    t.string "phone_items"
  end

  create_table "users", force: :cascade do |t|
    t.string "uid", null: false
    t.string "display_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_name", null: false
    t.string "photo_url"
    t.string "desc"
    t.index ["uid"], name: "index_users_on_uid", unique: true
    t.index ["user_name"], name: "index_users_on_user_name", unique: true
  end

end
