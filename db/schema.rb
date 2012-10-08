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

ActiveRecord::Schema.define(:version => 20121008000100) do

  create_table "episodes", :force => true do |t|
    t.string   "title"
    t.integer  "series_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "episodes", ["series_id"], :name => "index_episodes_on_series_id"

  create_table "perspectives", :force => true do |t|
    t.string   "user"
    t.string   "video_id"
    t.decimal  "start_offset", :precision => 4, :scale => 2
    t.integer  "episode_id"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  add_index "perspectives", ["episode_id"], :name => "index_perspectives_on_episode_id"

  create_table "series", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
