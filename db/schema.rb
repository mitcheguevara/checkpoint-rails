ActiveRecord::Schema.define do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.string "name"
    t.string "contnet"
    t.bolean "is_published"
  end

  create_table "comments", force: :cascade do |t|
    t.string  "title"
    t.string  "body"
    t.integer "posts_id"
    t.index ["posts_id"], name: "index_comments_on_posts_id", using: :btree
  end

  add_foreign_key "comments", "posts"
end
