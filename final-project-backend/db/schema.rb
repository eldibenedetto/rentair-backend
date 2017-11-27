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

ActiveRecord::Schema.define(version: 20171110183357) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.integer "owner_id"
    t.string "make"
    t.string "model"
    t.string "year"
    t.string "image", default: "https://wsa1.pakwheels.com/assets/default-display-image-car-638815e7606c67291ff77fd17e1dbb16.png"
    t.integer "price"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "pending_reservations", force: :cascade do |t|
    t.integer "guest_id"
    t.integer "car_id"
    t.datetime "start_date"
    t.string "pickup_time"
    t.datetime "end_date"
    t.string "dropoff_time"
    t.string "description"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "guest_id"
    t.integer "car_id"
    t.string "start_date"
    t.string "pickup_time"
    t.string "end_date"
    t.string "dropoff_time"
    t.string "description"
    t.integer "duration"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "image", default: "https://res.cloudinary.com/closebrace/image/upload/w_400/v1491315007/usericon_id76rb.png"
    t.string "email"
    t.string "password_digest"
    t.string "phone_number"
    t.string "street_address"
    t.string "city"
    t.string "state_territory"
    t.string "zip_code"
    t.string "state_territory_dl"
    t.string "drivers_license_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
