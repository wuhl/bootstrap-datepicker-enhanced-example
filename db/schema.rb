# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140814045154) do

  create_table "project_members", force: true do |t|
    t.integer  "project_phase_id"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_members", ["project_phase_id"], name: "index_project_members_on_project_phase_id"
  add_index "project_members", ["resource_id"], name: "index_project_members_on_resource_id"

  create_table "project_phases", force: true do |t|
    t.integer  "project_id"
    t.string   "name"
    t.date     "start"
    t.date     "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_phases", ["project_id"], name: "index_project_phases_on_project_id"

  create_table "projects", force: true do |t|
    t.string   "name"
    t.date     "start"
    t.date     "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "start"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
