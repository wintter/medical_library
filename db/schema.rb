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

ActiveRecord::Schema.define(version: 20161204150834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "benefit_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clinician_specialities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disease_requirements", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diseases", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "symptoms"
    t.text     "reason"
    t.text     "diagnostics"
    t.text     "treatment"
    t.string   "requirements"
  end

  create_table "medications", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "substance"
    t.text     "pharm_group"
    t.text     "pharm_action"
    t.text     "testimony"
    t.text     "contraindications"
    t.text     "side_effects"
    t.text     "use"
    t.text     "dosage"
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_diagnostics", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "disease_id"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id", "disease_id"], name: "index_patient_diagnostics_on_patient_id_and_disease_id", using: :btree
  end

  create_table "patient_disease_requirements", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "disease_requirement_id"
    t.text     "comment"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["disease_requirement_id"], name: "index_patient_disease_requirements_on_disease_requirement_id", using: :btree
    t.index ["patient_id"], name: "index_patient_disease_requirements_on_patient_id", using: :btree
  end

  create_table "patient_diseases", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "disease_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id", "disease_id"], name: "index_patient_diseases_on_patient_id_and_disease_id", using: :btree
  end

  create_table "patient_medications", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "medication_id"
    t.datetime "date"
    t.text     "side_reaction"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["patient_id", "medication_id"], name: "index_patient_medications_on_patient_id_and_medication_id", using: :btree
  end

  create_table "profession_works", force: :cascade do |t|
    t.integer  "profession_id"
    t.string   "code_zkpptr"
    t.string   "code_etkd"
    t.string   "code_dkhp"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["profession_id"], name: "index_profession_works_on_profession_id", using: :btree
  end

  create_table "professions", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                      default: "",    null: false
    t.string   "encrypted_password",         default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",              default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "surname"
    t.string   "patronymic"
    t.string   "type"
    t.string   "gender"
    t.datetime "date_of_birth"
    t.string   "home_number"
    t.string   "work_number"
    t.string   "address"
    t.string   "benefit_certificate_number"
    t.text     "signal_indicator"
    t.string   "code"
    t.boolean  "dispensary_group",           default: false
    t.integer  "clinician_speciality_id"
    t.integer  "profession_id"
    t.integer  "benefit_category_id"
    t.index ["benefit_category_id"], name: "index_users_on_benefit_category_id", using: :btree
    t.index ["clinician_speciality_id"], name: "index_users_on_clinician_speciality_id", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["profession_id"], name: "index_users_on_profession_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
