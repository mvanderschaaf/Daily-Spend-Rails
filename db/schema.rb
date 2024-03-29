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

ActiveRecord::Schema.define(:version => 20111016184713) do

  create_table "bills", :force => true do |t|
    t.string   "name"
    t.integer  "amount"
    t.integer  "frequency_id"
    t.date     "last_paid_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "frequencies", :force => true do |t|
    t.string   "name"
    t.integer  "times_per_year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goals", :force => true do |t|
    t.string   "name"
    t.integer  "amount"
    t.integer  "saved"
    t.date     "target_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", :force => true do |t|
    t.integer  "balance"
    t.integer  "paycheck_amount"
    t.integer  "paycheck_freq_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
