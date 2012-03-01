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

ActiveRecord::Schema.define(:version => 20120301223419) do

  create_table "autor_pics", :force => true do |t|
    t.integer  "autor_id"
    t.integer  "pic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "autor_pics", ["pic_id"], :name => "index_autor_pics_on_pic_id"

  create_table "autors", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.text     "cv"
    t.integer  "robot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pics", :force => true do |t|
    t.string   "titulo"
    t.string   "nombrearchivo"
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
