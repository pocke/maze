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

ActiveRecord::Schema.define(version: 20160719104120) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                      null: false
    t.text     "description", limit: 65535, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "category_trees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "child_id",   null: false
    t.integer  "parent_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_id"], name: "index_category_trees_child", using: :btree
    t.index ["parent_id"], name: "index_category_trees_parent", using: :btree
  end

  create_table "post_sources", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",          null: false
    t.string   "secret",        null: false
    t.integer  "users_id",      null: false
    t.integer  "categories_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["categories_id"], name: "index_post_sources_on_categories_id", using: :btree
    t.index ["users_id"], name: "index_post_sources_on_users_id", using: :btree
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "value",           limit: 65535, null: false
    t.integer  "post_sources_id",               null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["post_sources_id"], name: "index_posts_on_post_sources_id", using: :btree
  end

  create_table "subscribes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "users_id",      null: false
    t.integer  "categories_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["categories_id"], name: "index_subscribes_on_categories_id", using: :btree
    t.index ["users_id"], name: "index_subscribes_on_users_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "category_trees", "categories", column: "child_id"
  add_foreign_key "category_trees", "categories", column: "parent_id"
  add_foreign_key "post_sources", "categories", column: "categories_id"
  add_foreign_key "post_sources", "users", column: "users_id"
  add_foreign_key "posts", "post_sources", column: "post_sources_id"
  add_foreign_key "subscribes", "categories", column: "categories_id"
  add_foreign_key "subscribes", "users", column: "users_id"
end
