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

ActiveRecord::Schema.define(:version => 20101109184651) do

  create_table "comments", :force => true do |t|
    t.integer  "media_id"
    t.string   "comments"
    t.string   "from"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "containers", :force => true do |t|
    t.integer  "view_id"
    t.integer  "group_id"
    t.integer  "position_x"
    t.integer  "position_y"
    t.integer  "size_x"
    t.integer  "size_y"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_groups", :force => true do |t|
    t.integer  "data_id"
    t.string   "data_type"
    t.integer  "group_id"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_tags", :force => true do |t|
    t.integer  "data_id"
    t.string   "data_type"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.text     "details"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pieces", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "url"
    t.date     "reference_date"
    t.string   "medium"
    t.string   "mime_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.integer  "user_id"
    t.string   "tag_name"
    t.string   "tag_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "full_name"
    t.string   "folio_name"
    t.text     "about_me"
    t.integer  "premium"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "linkedin_token"
    t.string   "linkedin_secret"
    t.string   "linkedin_id"
  end

  create_table "views", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.boolean  "private"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "views_emails", :force => true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
