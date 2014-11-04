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

ActiveRecord::Schema.define(:version => 20141104043151) do

  create_table "apply", :id => false, :force => true do |t|
    t.integer "position_id",               :precision => 38, :scale => 0, :null => false
    t.string  "user_id",     :limit => 10,                                :null => false
    t.string  "status",      :limit => 20,                                :null => false
  end

  create_table "career_fairs", :primary_key => "activity_id", :force => true do |t|
    t.integer "fair_id",                        :precision => 38, :scale => 0, :null => false
    t.string  "person_in_charge", :limit => 30
  end

  create_table "companies", :primary_key => "company_id", :force => true do |t|
    t.string "company_name",         :limit => 30, :null => false
    t.string "headquarter_location", :limit => 50
    t.string "website",              :limit => 50
  end

  add_index "companies", ["website"], :name => "sys_c00266724", :unique => true

  create_table "documents", :primary_key => "document_id", :force => true do |t|
    t.string "document_name", :limit => 30, :null => false
  end

  create_table "info_sessions", :primary_key => "activity_id", :force => true do |t|
    t.integer "session_id",                  :precision => 38, :scale => 0, :null => false
    t.string  "food",          :limit => 30
    t.string  "contact_email", :limit => 40
    t.integer "host_company",                :precision => 38, :scale => 0, :null => false
  end

  create_table "participate", :id => false, :force => true do |t|
    t.integer "company_id",                  :precision => 38, :scale => 0, :null => false
    t.integer "activity_id",                 :precision => 38, :scale => 0, :null => false
    t.string  "contact_email", :limit => 30,                                :null => false
    t.string  "booth_number",  :limit => 10
  end

  create_table "positions", :primary_key => "position_id", :force => true do |t|
    t.string   "position_name", :limit => 30,                                :null => false
    t.integer  "company_id",                  :precision => 38, :scale => 0, :null => false
    t.string   "category",      :limit => 20
    t.string   "type",          :limit => 20,                                :null => false
    t.datetime "deadline"
  end

  create_table "possess", :id => false, :force => true do |t|
    t.string  "user_id",     :limit => 10,                                :null => false
    t.integer "skill_id",                  :precision => 38, :scale => 0, :null => false
    t.string  "proficiency", :limit => 20
  end

  create_table "prefer", :id => false, :force => true do |t|
    t.integer "position_id",               :precision => 38, :scale => 0, :null => false
    t.integer "skill_id",                  :precision => 38, :scale => 0, :null => false
    t.string  "proficiency", :limit => 20
    t.string  "importance",  :limit => 20
  end

  create_table "recruitment_activities", :primary_key => "activity_id", :force => true do |t|
    t.string   "activity_name", :limit => 30, :null => false
    t.string   "location",      :limit => 50
    t.string   "dress_code",    :limit => 20
    t.datetime "activity_date"
  end

  create_table "require", :id => false, :force => true do |t|
    t.integer "position_id",               :precision => 38, :scale => 0, :null => false
    t.integer "document_id",               :precision => 38, :scale => 0, :null => false
    t.string  "type",        :limit => 20
  end

  create_table "skills", :primary_key => "skill_id", :force => true do |t|
    t.string "skill_name", :limit => 30, :null => false
  end

  add_index "skills", ["skill_name"], :name => "sys_c00266748", :unique => true

  create_table "users", :primary_key => "user_id", :force => true do |t|
    t.string   "name",               :limit => 20
    t.string   "email",              :limit => 20,                                :null => false
    t.string   "major",              :limit => 20
    t.string   "degree",             :limit => 20
    t.integer  "year_of_graduation",               :precision => 38, :scale => 0
    t.datetime "date_of_birth"
    t.float    "overall_gpa",        :limit => 63
    t.string   "password_digest"
  end

  add_index "users", ["email"], :name => "sys_c00266721", :unique => true

  add_foreign_key "apply", "positions", :primary_key => nil, :name => "sys_c00485477", :dependent => :delete
  add_foreign_key "apply", "users", :primary_key => nil, :name => "sys_c00485478", :dependent => :delete

  add_foreign_key "career_fairs", "recruitment_activities", :column => "activity_id", :primary_key => nil, :name => "sys_c00485479", :dependent => :delete

  add_foreign_key "info_sessions", "companies", :column => "host_company", :primary_key => nil, :name => "sys_c00485480", :dependent => :delete
  add_foreign_key "info_sessions", "recruitment_activities", :column => "activity_id", :primary_key => nil, :name => "sys_c00485481", :dependent => :delete

  add_foreign_key "participate", "career_fairs", :column => "activity_id", :primary_key => nil, :name => "sys_c00485483", :dependent => :delete
  add_foreign_key "participate", "companies", :primary_key => nil, :name => "sys_c00485482"

  add_foreign_key "positions", "companies", :primary_key => nil, :name => "sys_c00485484"

  add_foreign_key "possess", "skills", :primary_key => nil, :name => "sys_c00485486", :dependent => :delete
  add_foreign_key "possess", "users", :primary_key => nil, :name => "sys_c00485485", :dependent => :delete

  add_foreign_key "prefer", "positions", :primary_key => nil, :name => "sys_c00485487", :dependent => :delete
  add_foreign_key "prefer", "skills", :primary_key => nil, :name => "sys_c00485488"

  add_foreign_key "require", "documents", :primary_key => nil, :name => "sys_c00485490", :dependent => :delete
  add_foreign_key "require", "positions", :primary_key => nil, :name => "sys_c00485489", :dependent => :delete

end
