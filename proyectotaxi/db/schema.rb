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

ActiveRecord::Schema.define(version: 20151122023437) do

  create_table "abouts", force: :cascade do |t|
    t.string   "titulo",                limit: 255
    t.text     "description",           limit: 65535
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "imagen_5_file_name",    limit: 255
    t.string   "imagen_5_content_type", limit: 255
    t.integer  "imagen_5_file_size",    limit: 4
    t.datetime "imagen_5_updated_at"
  end

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "autos", force: :cascade do |t|
    t.string   "marca",      limit: 255
    t.string   "modelo",     limit: 255
    t.string   "placa",      limit: 255
    t.string   "color",      limit: 255
    t.string   "tipo",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",                  limit: 255
    t.string   "direccion",             limit: 255
    t.string   "telefono",              limit: 255
    t.string   "email",                 limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "imagen_3_file_name",    limit: 255
    t.string   "imagen_3_content_type", limit: 255
    t.integer  "imagen_3_file_size",    limit: 4
    t.datetime "imagen_3_updated_at"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.text     "asunto",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "username",               limit: 255
    t.string   "telefono",               limit: 255
    t.string   "movil",                  limit: 255
    t.string   "direccion",              limit: 255
    t.string   "dni",                    limit: 8
    t.string   "licencia",               limit: 9
    t.string   "imagen_2_file_name",     limit: 255
    t.string   "imagen_2_content_type",  limit: 255
    t.integer  "imagen_2_file_size",     limit: 4
    t.datetime "imagen_2_updated_at"
    t.integer  "username_id",            limit: 4
    t.integer  "auto_id",                limit: 4
    t.string   "marca",                  limit: 255
    t.string   "modelo",                 limit: 255
    t.string   "placa",                  limit: 255
    t.string   "color",                  limit: 255
    t.string   "tipo",                   limit: 255
  end

  add_index "drivers", ["auto_id"], name: "index_drivers_on_auto_id", using: :btree
  add_index "drivers", ["email"], name: "index_drivers_on_email", unique: true, using: :btree
  add_index "drivers", ["reset_password_token"], name: "index_drivers_on_reset_password_token", unique: true, using: :btree
  add_index "drivers", ["username_id"], name: "index_drivers_on_username_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "salida",     limit: 255
    t.string   "llegada",    limit: 255
    t.decimal  "precio",                 precision: 8, scale: 2
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.date     "fecha"
    t.string   "direccion_salida",  limit: 255
    t.string   "distrito_salida",   limit: 255
    t.string   "direccion_llegada", limit: 255
    t.string   "distrito_llegada",  limit: 255
    t.string   "modalidad",         limit: 255
    t.string   "referencia",        limit: 255
    t.date     "fecha_recojo"
    t.string   "hora_recojo",       limit: 255
    t.string   "tiempo",            limit: 255
    t.string   "pedido",            limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "driver_id",         limit: 4
    t.integer  "user_id",           limit: 4
  end

  add_index "reservas", ["driver_id"], name: "index_reservas_on_driver_id", using: :btree
  add_index "reservas", ["user_id"], name: "index_reservas_on_user_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.string   "titulo",                limit: 255
    t.text     "description",           limit: 65535
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "imagen_4_file_name",    limit: 255
    t.string   "imagen_4_content_type", limit: 255
    t.integer  "imagen_4_file_size",    limit: 4
    t.datetime "imagen_4_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "username",               limit: 255
    t.string   "telefono",               limit: 255
    t.string   "movil",                  limit: 255
    t.string   "direccion",              limit: 255
    t.string   "imagen_1_file_name",     limit: 255
    t.string   "imagen_1_content_type",  limit: 255
    t.integer  "imagen_1_file_size",     limit: 4
    t.datetime "imagen_1_updated_at"
    t.integer  "reserva_id",             limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reserva_id"], name: "index_users_on_reserva_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "drivers", "autos"
  add_foreign_key "reservas", "drivers"
  add_foreign_key "reservas", "users"
  add_foreign_key "users", "reservas"
end
