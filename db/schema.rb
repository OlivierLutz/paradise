# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_05_221800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "nature"
    t.float "deductibilite"
    t.string "souscat"
    t.string "user"
  end

  create_table "categs", force: :cascade do |t|
    t.string "nature"
    t.float "deductibilite"
    t.string "souscat"
    t.string "user"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "natureold"
  end

  create_table "fraispros", force: :cascade do |t|
    t.string "nature"
    t.string "facture"
    t.string "compte"
    t.string "bank"
    t.date "date"
    t.float "montant"
    t.text "description"
    t.float "deductibilite"
    t.float "privepro"
    t.float "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user"
  end

  create_table "impots", force: :cascade do |t|
    t.float "montant"
    t.text "description"
    t.date "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "params", force: :cascade do |t|
    t.string "trifraispro"
    t.string "user"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "revenus", force: :cascade do |t|
    t.float "revenuindep"
    t.float "salaire"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user"
    t.float "mois"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
