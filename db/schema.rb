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

ActiveRecord::Schema.define(:version => 20120402165005) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "subtitle"
    t.text     "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "public"
    t.string   "flyer_image"
    t.integer  "viber_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rsvps", :force => true do |t|
    t.integer  "viber_id"
    t.integer  "event_id"
    t.integer  "sincerity"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tickets", :force => true do |t|
    t.integer  "tier_id"
    t.integer  "viber_id"
    t.integer  "transaction_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "tiers", :force => true do |t|
    t.integer  "event_id"
    t.string   "name"
    t.integer  "price"
    t.integer  "quantity"
    t.integer  "remaining_quantity"
    t.datetime "deadline"
    t.integer  "contact_person_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "transactions", :force => true do |t|
    t.integer  "viber_id"
    t.string   "transaction_record_id"
    t.integer  "points_in"
    t.integer  "points_out"
    t.text     "note"
    t.string   "item_type"
    t.integer  "item_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "vibers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "authentication_token"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "vibers", ["authentication_token"], :name => "index_vibers_on_authentication_token", :unique => true
  add_index "vibers", ["confirmation_token"], :name => "index_vibers_on_confirmation_token", :unique => true
  add_index "vibers", ["email"], :name => "index_vibers_on_email", :unique => true
  add_index "vibers", ["reset_password_token"], :name => "index_vibers_on_reset_password_token", :unique => true

end
