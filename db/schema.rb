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

ActiveRecord::Schema.define(version: 20180426102533) do

  create_table "genre_movies", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "genre_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.string "genre_description"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "movie_poster"
    t.string "movie_background_poster"
    t.string "short_desc"
    t.string "full_desc"
    t.boolean "isMovie3D", default: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "region_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.integer "gender"
    t.integer "region_id"
    t.string "profileUrl"
    t.integer "facebook_id", limit: 8
    t.boolean "admin", default: false
    t.string "password_digest"
    t.index ["region_id"], name: "index_users_on_region_id"
  end

end
