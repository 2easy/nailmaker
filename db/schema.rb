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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130122223243) do

  create_table "colors", :force => true do |t|
    t.string   "polish_name"
    t.string   "english_name"
    t.string   "rgb_color"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "hands", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nails", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "hand_id"
    t.string   "img"
  end

  create_table "patterns", :force => true do |t|
    t.string   "name_pl"
    t.string   "name_ang"
    t.string   "image_url"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "styles", :force => true do |t|
    t.string   "name_pl"
    t.string   "name_en"
    t.integer  "ref_background_color"
    t.integer  "ref_french_color"
    t.integer  "ref_pattern"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

end
