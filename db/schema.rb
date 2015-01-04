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

ActiveRecord::Schema.define(version: 20150104071845) do

  create_table "discounts", force: true do |t|
    t.text     "description"
    t.string   "title"
    t.integer  "restaurant_id"
    t.float    "percentage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "discounts", ["restaurant_id"], name: "index_discounts_on_restaurant_id"

  create_table "dish_feedbacks", force: true do |t|
    t.text     "content"
    t.integer  "dish_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dish_feedbacks", ["dish_id"], name: "index_dish_feedbacks_on_dish_id"
  add_index "dish_feedbacks", ["user_id"], name: "index_dish_feedbacks_on_user_id"

  create_table "dish_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dishes", force: true do |t|
    t.integer  "restaurant_id"
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.integer  "dish_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dishes", ["dish_type_id"], name: "index_dishes_on_dish_type_id"
  add_index "dishes", ["restaurant_id"], name: "index_dishes_on_restaurant_id"

  create_table "driver_feedbacks", force: true do |t|
    t.text     "content"
    t.integer  "driver_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "driver_feedbacks", ["driver_id"], name: "index_driver_feedbacks_on_driver_id"
  add_index "driver_feedbacks", ["user_id"], name: "index_driver_feedbacks_on_user_id"

  create_table "drivers", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "working_time"
    t.integer  "transportation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "drivers", ["transportation_id"], name: "index_drivers_on_transportation_id"

  create_table "location_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "location_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["location_type_id"], name: "index_locations_on_location_type_id"

  create_table "order_items", force: true do |t|
    t.integer  "order_id"
    t.integer  "dish_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_items", ["dish_id"], name: "index_order_items_on_dish_id"
  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id"

  create_table "orders", force: true do |t|
    t.integer  "total_price"
    t.integer  "driver_id"
    t.integer  "user_id"
    t.integer  "location_id"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "discount_id"
  end

  add_index "orders", ["driver_id"], name: "index_orders_on_driver_id"
  add_index "orders", ["location_id"], name: "index_orders_on_location_id"
  add_index "orders", ["restaurant_id"], name: "index_orders_on_restaurant_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "restaurant_feedbacks", force: true do |t|
    t.text     "content"
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurant_feedbacks", ["restaurant_id"], name: "index_restaurant_feedbacks_on_restaurant_id"
  add_index "restaurant_feedbacks", ["user_id"], name: "index_restaurant_feedbacks_on_user_id"

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "to_buys", force: true do |t|
    t.integer  "user_id"
    t.integer  "dish_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "to_buys", ["dish_id"], name: "index_to_buys_on_dish_id"
  add_index "to_buys", ["user_id"], name: "index_to_buys_on_user_id"

  create_table "transportations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

end
