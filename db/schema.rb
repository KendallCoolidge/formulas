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

ActiveRecord::Schema.define(version: 2018_10_29_162922) do

  create_table "base_ingredients", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", limit: 30, default: "", null: false
    t.decimal "butterfat", precision: 5, scale: 2, default: "0.0", null: false
    t.decimal "msnf", precision: 5, scale: 2, default: "0.0", null: false
    t.decimal "sucrose", precision: 5, scale: 2, default: "0.0", null: false
    t.decimal "glucose", precision: 5, scale: 2, default: "0.0", null: false
    t.integer "rounder_id", default: 0, null: false
    t.integer "location_id", default: 0, null: false
    t.integer "position", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "batch_units", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", limit: 50, default: "", null: false
    t.string "wtorvolume", limit: 10, default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", limit: 50, default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formula_details", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "formula_id", default: 0, null: false
    t.integer "ingredient_id", default: 0, null: false
    t.decimal "usage", precision: 7, scale: 2, default: "0.0", null: false
    t.integer "unit_id", default: 0, null: false
    t.integer "rounder_id", default: 0, null: false
    t.integer "position", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formula_masters", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "description", default: "", null: false
    t.decimal "butterfat", precision: 5, scale: 2, default: "0.0", null: false
    t.decimal "milk_solids_non_fat", precision: 5, scale: 2, default: "0.0", null: false
    t.decimal "sucrose", precision: 5, scale: 2, default: "0.0", null: false
    t.decimal "glucose", precision: 5, scale: 2, default: "0.0", null: false
    t.decimal "percent_variable", precision: 5, scale: 2, default: "0.0", null: false
    t.decimal "weight_per_unit", precision: 6, scale: 3, default: "0.0", null: false
    t.integer "unit_id", default: 0, null: false
    t.decimal "normal_batch_size", precision: 8, scale: 2, default: "0.0", null: false
    t.integer "category_id", default: 0, null: false
    t.integer "batch_unit_id", default: 0, null: false
    t.integer "position", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
