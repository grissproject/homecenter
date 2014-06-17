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

ActiveRecord::Schema.define(:version => 20140617164924) do

  create_table "admins", :force => true do |t|
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

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

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
    t.text     "mensaje"
  end

  add_index "compra_regalo_novios", ["producto_id"], :name => "index_compra_regalo_novios_on_producto_id"
  add_index "compra_regalo_novios", ["revista_novio_id"], :name => "index_compra_regalo_novios_on_revista_novio_id"
  add_index "compra_regalo_novios", ["user_id"], :name => "index_compra_regalo_novios_on_user_id"

  create_table "imagen_portadas", :force => true do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  create_table "panfletos", :force => true do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "panfletos_productos", :id => false, :force => true do |t|
    t.integer "panfleto_id"
    t.integer "producto_id"
  end

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

  create_table "productos_revista_mensuals", :id => false, :force => true do |t|
    t.integer "producto_id"
    t.integer "revista_mensual_id"
  end

  create_table "productos_revista_novios", :id => false, :force => true do |t|
    t.integer "producto_id"
    t.integer "revista_novio_id"
  end

  create_table "reserva_regalo_novios", :force => true do |t|
    t.float    "monto"
    t.boolean  "activo"
    t.text     "mensaje"
    t.integer  "revista_novio_id"
    t.integer  "producto_id"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "reserva_regalo_novios", ["producto_id"], :name => "index_reserva_regalo_novios_on_producto_id"
  add_index "reserva_regalo_novios", ["revista_novio_id"], :name => "index_reserva_regalo_novios_on_revista_novio_id"
  add_index "reserva_regalo_novios", ["user_id"], :name => "index_reserva_regalo_novios_on_user_id"

  create_table "revista_mensuals", :force => true do |t|
    t.string   "titulo"
    t.string   "temporada"
    t.text     "descripcion"
    t.string   "estilo"
    t.boolean  "home"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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
    t.string   "estilo"
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
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
