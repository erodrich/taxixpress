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

ActiveRecord::Schema.define(version: 20151009181525) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "addresses", force: :cascade do |t|
    t.integer  "nu_casa",        limit: 4
    t.string   "tx_edif_dpto",   limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "city_id",        limit: 4
    t.integer  "district_id",    limit: 4
    t.integer  "tipo_street_id", limit: 4
    t.string   "street",         limit: 255
  end

  add_index "addresses", ["city_id"], name: "index_addresses_on_city_id", using: :btree
  add_index "addresses", ["district_id"], name: "index_addresses_on_district_id", using: :btree
  add_index "addresses", ["tipo_street_id"], name: "index_addresses_on_tipo_street_id", using: :btree

  create_table "addresses_services", id: false, force: :cascade do |t|
    t.integer "service_id", limit: 4,                 null: false
    t.integer "address_id", limit: 4,                 null: false
    t.boolean "origin",               default: false
  end

  add_index "addresses_services", ["address_id", "service_id"], name: "index_addresses_services_on_address_id_and_service_id", unique: true, using: :btree

  create_table "addresses_users", id: false, force: :cascade do |t|
    t.integer "user_id",    limit: 4, null: false
    t.integer "address_id", limit: 4, null: false
  end

  add_index "addresses_users", ["address_id", "user_id"], name: "index_addresses_users_on_address_id_and_user_id", unique: true, using: :btree

  create_table "admin_users", force: :cascade do |t|
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

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "no_ciudad",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "no_distrito", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "no_driver",       limit: 255
    t.string   "no_correo",       limit: 255
    t.string   "nu_telefono",     limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "vehicle_id",      limit: 4
  end

  add_index "drivers", ["vehicle_id"], name: "index_drivers_on_vehicle_id", using: :btree

  create_table "feedbacks", force: :cascade do |t|
    t.text     "tx_comentario", limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "user_id",       limit: 4
    t.integer  "driver_id",     limit: 4
    t.integer  "service_id",    limit: 4
  end

  add_index "feedbacks", ["driver_id"], name: "index_feedbacks_on_driver_id", using: :btree
  add_index "feedbacks", ["service_id"], name: "index_feedbacks_on_service_id", using: :btree
  add_index "feedbacks", ["user_id"], name: "index_feedbacks_on_user_id", using: :btree

  create_table "payment_methods", force: :cascade do |t|
    t.string   "tx_descripcion", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "co_confirmacion",   limit: 255
    t.date     "fe_fecha"
    t.time     "fe_hora"
    t.string   "nu_telefono",       limit: 255
    t.float    "ss_costo_estimado", limit: 24
    t.float    "ss_costo_final",    limit: 24
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "driver_id",         limit: 4
    t.integer  "feedback_id",       limit: 4
    t.integer  "user_id",           limit: 4
    t.integer  "payment_method_id", limit: 4
    t.integer  "tipo_vehicle_id",   limit: 4
    t.integer  "status_id",         limit: 4
  end

  add_index "services", ["driver_id"], name: "index_services_on_driver_id", using: :btree
  add_index "services", ["feedback_id"], name: "index_services_on_feedback_id", using: :btree
  add_index "services", ["payment_method_id"], name: "index_services_on_payment_method_id", using: :btree
  add_index "services", ["status_id"], name: "index_services_on_status_id", using: :btree
  add_index "services", ["tipo_vehicle_id"], name: "index_services_on_tipo_vehicle_id", using: :btree
  add_index "services", ["user_id"], name: "index_services_on_user_id", using: :btree

  create_table "statuses", force: :cascade do |t|
    t.string   "no_status",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "streets", force: :cascade do |t|
    t.string   "no_via",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tipo_streets", force: :cascade do |t|
    t.string   "no_tipo_via", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "tipo_vehicles", force: :cascade do |t|
    t.string   "no_tipo",      limit: 255
    t.integer  "nu_pasajeros", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "no_user",         limit: 255
    t.string   "no_correo",       limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "users", ["no_correo"], name: "index_users_on_no_correo", unique: true, using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.string   "no_marca",        limit: 255
    t.string   "no_modelo",       limit: 255
    t.string   "nu_placa",        limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "driver_id",       limit: 4
    t.integer  "tipo_vehicle_id", limit: 4
  end

  add_index "vehicles", ["driver_id"], name: "index_vehicles_on_driver_id", using: :btree
  add_index "vehicles", ["tipo_vehicle_id"], name: "index_vehicles_on_tipo_vehicle_id", using: :btree

  add_foreign_key "addresses", "cities"
  add_foreign_key "addresses", "districts"
  add_foreign_key "addresses", "tipo_streets"
  add_foreign_key "drivers", "vehicles"
  add_foreign_key "feedbacks", "drivers"
  add_foreign_key "feedbacks", "services"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "services", "drivers"
  add_foreign_key "services", "feedbacks"
  add_foreign_key "services", "payment_methods"
  add_foreign_key "services", "statuses"
  add_foreign_key "services", "tipo_vehicles"
  add_foreign_key "services", "users"
  add_foreign_key "vehicles", "drivers"
  add_foreign_key "vehicles", "tipo_vehicles"
end
