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

ActiveRecord::Schema.define(version: 2022_02_10_134512) do

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacts_telephones", id: false, force: :cascade do |t|
    t.integer "contact_id", null: false
    t.integer "telephone_id", null: false
    t.integer "kind"
    t.boolean "main"
    t.index ["contact_id", "telephone_id"], name: "index_contacts_telephones_on_contact_id_and_telephone_id", unique: true
  end

  create_table "contacts_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "contact_id", null: false
    t.index ["user_id", "contact_id"], name: "index_contacts_users_on_user_id_and_contact_id", unique: true
  end

  create_table "telephones", force: :cascade do |t|
    t.string "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "biography"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
