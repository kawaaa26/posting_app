ActiveRecord::Schema.define(version: 2020_03_06_071007) do

  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.string "title", limit: 200, default: "", null: false
    t.text "content", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "url", default: ""
  end

end
