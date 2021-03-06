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

ActiveRecord::Schema.define(version: 20180501151154) do

# Could not dump table "courses" because of following StandardError
#   Unknown type '' for column 'parent_course_id'

  create_table "hogwarts_classes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id"
    t.integer "professor_id"
    t.integer "section"
    t.string "term"
  end

  create_table "prerequisites", force: :cascade do |t|
    t.integer "course_id"
    t.integer "prerequisite_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "previous_courses", force: :cascade do |t|
    t.integer "course_id"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "house"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.integer "hogwarts_class_id"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "capacity"
  end

  create_table "students", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "house"
  end

  create_table "subjects", force: :cascade do |t|
    t.text "code"
    t.text "full_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
