# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2026_04_30_030432) do
  create_table "discord_messages", force: :cascade do |t|
    t.string "discord_message_id"
    t.string "discord_user_id"
    t.string "discord_channel_id"
    t.text "content"
    t.datetime "posted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "edited_at"
    t.index ["discord_message_id"], name: "index_discord_messages_on_discord_message_id", unique: true
    t.index ["discord_user_id"], name: "index_discord_messages_on_discord_user_id"
    t.index ["posted_at"], name: "index_discord_messages_on_posted_at"
  end
end
