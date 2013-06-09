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

ActiveRecord::Schema.define(:version => 20130609064552) do

  create_table "card_colors", :force => true do |t|
    t.string   "card_color", :default => "#FFFFFF"
    t.integer  "card_id"
    t.boolean  "active"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  add_index "card_colors", ["card_id"], :name => "index_card_colors_on_card_id"

  create_table "card_font_alignments", :force => true do |t|
    t.string   "alignment",  :default => "left"
    t.integer  "card_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "card_font_alignments", ["card_id"], :name => "index_card_font_alignments_on_card_id"

  create_table "card_font_colors", :force => true do |t|
    t.string   "card_font_color", :default => "#000000"
    t.integer  "card_id"
    t.boolean  "active"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "card_font_colors", ["card_id"], :name => "index_card_font_colors_on_card_id"

  create_table "card_font_families", :force => true do |t|
    t.string   "card_font_family", :default => "Arial"
    t.integer  "card_id"
    t.boolean  "active"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  add_index "card_font_families", ["card_id"], :name => "index_card_font_families_on_card_id"

  create_table "card_images", :force => true do |t|
    t.string   "image"
    t.integer  "card_id"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "card_images", ["card_id"], :name => "index_card_images_on_card_id"

  create_table "card_texts", :force => true do |t|
    t.text     "content",    :limit => 255
    t.integer  "card_id"
    t.boolean  "active"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "card_texts", ["card_id"], :name => "index_card_texts_on_card_id"

  create_table "cards", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "card_image"
    t.boolean  "card_color"
    t.boolean  "card_font_color"
    t.boolean  "card_font_family"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "cards", ["user_id"], :name => "index_cards_on_user_id"

  create_table "logos", :force => true do |t|
    t.string   "image"
    t.integer  "card_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "logos", ["card_id"], :name => "index_logos_on_card_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "text_positions", :force => true do |t|
    t.string   "position",   :default => "top"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "text_sizes", :force => true do |t|
    t.string   "size",       :default => "Medium"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "users", :force => true do |t|
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
