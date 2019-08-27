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

ActiveRecord::Schema.define(version: 2019_08_27_153336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bays", force: :cascade do |t|
    t.integer "number"
    t.integer "bay_size"
    t.integer "bay_cells"
    t.integer "bay_height"
    t.integer "bay_total_container_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "vessel_id", null: false
    t.index ["vessel_id"], name: "index_bays_on_vessel_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "country"
    t.string "short_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gangs", force: :cascade do |t|
    t.string "location"
    t.string "first_crane_operator"
    t.string "second_crane_operator"
    t.string "foreman"
    t.bigint "shift_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shift_id"], name: "index_gangs_on_shift_id"
  end

  create_table "longshore_regs", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["number"], name: "index_longshore_regs_on_number"
  end

  create_table "plans", force: :cascade do |t|
    t.bigint "voyage_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["voyage_id"], name: "index_plans_on_voyage_id"
  end

  create_table "ports", force: :cascade do |t|
    t.bigint "state_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_ports_on_state_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.string "load_number"
    t.string "discharge_number"
    t.datetime "start_day_time"
    t.bigint "voyage_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "dock_foreman"
    t.bigint "plan_id", null: false
    t.index ["plan_id"], name: "index_shifts_on_plan_id"
    t.index ["voyage_id"], name: "index_shifts_on_voyage_id"
  end

  create_table "states", force: :cascade do |t|
    t.bigint "country_id", null: false
    t.string "state"
    t.string "short_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "steamship_lines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "terminals", force: :cascade do |t|
    t.bigint "port_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["port_id"], name: "index_terminals_on_port_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "role_id", null: false
    t.string "fname"
    t.string "lname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "vessels", force: :cascade do |t|
    t.bigint "steamship_line_id", null: false
    t.string "name"
    t.integer "length_overall"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["steamship_line_id"], name: "index_vessels_on_steamship_line_id"
  end

  create_table "voyages", force: :cascade do |t|
    t.string "numberin"
    t.string "numberout"
    t.datetime "eta"
    t.datetime "etd"
    t.datetime "ata"
    t.datetime "atd"
    t.bigint "terminal_id", null: false
    t.bigint "vessel_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "job_number"
    t.index ["terminal_id"], name: "index_voyages_on_terminal_id"
    t.index ["vessel_id"], name: "index_voyages_on_vessel_id"
  end

  add_foreign_key "bays", "vessels"
  add_foreign_key "gangs", "shifts"
  add_foreign_key "plans", "voyages"
  add_foreign_key "ports", "states"
  add_foreign_key "shifts", "plans"
  add_foreign_key "shifts", "voyages"
  add_foreign_key "states", "countries"
  add_foreign_key "terminals", "ports"
  add_foreign_key "users", "roles"
  add_foreign_key "vessels", "steamship_lines"
  add_foreign_key "voyages", "terminals"
  add_foreign_key "voyages", "vessels"
end
