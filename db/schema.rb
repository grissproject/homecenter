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

ActiveRecord::Schema.define(:version => 20131108160846) do

  create_table "categoria", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "compra_regalo_novios", :force => true do |t|
    t.integer  "revista_novio_id"
    t.integer  "producto_id"
    t.float    "monto"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "compra_regalo_novios", ["producto_id"], :name => "index_compra_regalo_novios_on_producto_id"
  add_index "compra_regalo_novios", ["revista_novio_id"], :name => "index_compra_regalo_novios_on_revista_novio_id"
  add_index "compra_regalo_novios", ["user_id"], :name => "index_compra_regalo_novios_on_user_id"

  create_table "productos", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "codigo"
    t.integer  "stock"
    t.integer  "categoria_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
    t.boolean  "novios"
    t.float    "precio"
  end

  add_index "productos", ["categoria_id"], :name => "index_productos_on_categoria_id"

  create_table "productos_revista_novios", :id => false, :force => true do |t|
    t.integer "producto_id"
    t.integer "revista_novio_id"
  end

  create_table "revista_novios", :force => true do |t|
    t.string   "nombre_novio"
    t.string   "nombre_novia"
    t.datetime "fecha"
    t.text     "texto_invitacion"
    t.text     "direccion"
    t.integer  "user_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "foto_novio_file_name"
    t.string   "foto_novio_content_type"
    t.integer  "foto_novio_file_size"
    t.datetime "foto_novio_updated_at"
    t.string   "foto_novia_file_name"
    t.string   "foto_novia_content_type"
    t.integer  "foto_novia_file_size"
    t.datetime "foto_novia_updated_at"
    t.string   "titulo"
  end

  add_index "revista_novios", ["user_id"], :name => "index_revista_novios_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username"
    t.string   "nombre"
    t.string   "apellido"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
