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

ActiveRecord::Schema[7.0].define(version: 2022_11_20_134458) do
  create_table "articles", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "code_1"
    t.string "code_2"
    t.string "code_3"
    t.string "name"
    t.string "model"
    t.string "brand"
    t.string "description"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "audits", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.integer "auditable_id"
    t.string "auditable_type"
    t.integer "associated_id"
    t.string "associated_type"
    t.integer "user_id"
    t.string "user_type"
    t.string "username"
    t.string "action"
    t.text "audited_changes"
    t.integer "version", default: 0
    t.string "comment"
    t.string "remote_address"
    t.string "request_uuid"
    t.datetime "created_at"
    t.index ["associated_type", "associated_id"], name: "associated_index"
    t.index ["auditable_type", "auditable_id", "version"], name: "auditable_index"
    t.index ["created_at"], name: "index_audits_on_created_at"
    t.index ["request_uuid"], name: "index_audits_on_request_uuid"
    t.index ["user_id", "user_type"], name: "user_index"
  end

  create_table "b_attyp_lu", primary_key: "ATTYP", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "DESCR", limit: 7
  end

  create_table "b_basic_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 40, null: false
    t.decimal "ATINN", precision: 10
    t.string "ATNAM", limit: 30
    t.string "ATWRT", limit: 30
  end

  create_table "b_brands", primary_key: "BRAND_ID", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_DESCR", limit: 30
  end

  create_table "b_makt1", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18
    t.string "SPRAS", limit: 1
    t.string "MAKTX", limit: 40
  end

  create_table "b_makt2", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18
    t.string "SPRAS", limit: 1
    t.string "MAKTX", limit: 40
  end

  create_table "b_mara", primary_key: "MATNR", id: { type: :string, limit: 40 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTART", limit: 4
    t.string "MATKL", limit: 9
    t.string "BSTME", limit: 3
    t.decimal "BRGEW", precision: 13, scale: 3
    t.decimal "NTGEW", precision: 13, scale: 3
    t.string "GEWEI", limit: 3
    t.decimal "VOLUM", precision: 13, scale: 3
    t.string "VOLEH", limit: 3
    t.decimal "ERVOL", precision: 13, scale: 3
    t.string "ERVOE", limit: 3
    t.string "WHSTC", limit: 2
    t.string "RAUBE", limit: 2
    t.string "TEMPB", limit: 2
    t.string "TRAGR", limit: 4
    t.string "SPART", limit: 2
    t.decimal "WESCH", precision: 13, scale: 3
    t.string "BWSCL", limit: 1
    t.string "EAN11", limit: 18
    t.string "NUMTP", limit: 2
    t.decimal "LAENG", precision: 13, scale: 3
    t.decimal "BREIT", precision: 13, scale: 3
    t.decimal "HOEHE", precision: 13, scale: 3
    t.string "MEABM", limit: 3
    t.string "VABME", limit: 1
    t.string "VHART", limit: 4
    t.string "MAGRV", limit: 4
    t.date "DATAB"
    t.date "LIQDT"
    t.string "SAISJ", limit: 4
    t.string "PLGTP", limit: 2
    t.string "SATNR", limit: 40
    t.string "ATTYP", limit: 2
    t.string "PMATA", limit: 40
    t.string "MSTAE", limit: 2
    t.date "MSTDE"
    t.string "TAKLV", limit: 1
    t.decimal "MHDRZ", precision: 4
    t.decimal "MHDHB", precision: 4
    t.string "INHME", limit: 3
    t.decimal "INHAL", precision: 13, scale: 3
    t.string "SPROF", limit: 1
    t.string "NRFHG", limit: 1
    t.string "IPRKZ", limit: 1
    t.string "MTPOS_MARA", limit: 4
    t.string "BBTYP", limit: 1
    t.string "WHMATGR", limit: 4
    t.string "HUTYP", limit: 4
    t.string "QGRP", limit: 4
    t.string "BRAND_ID", limit: 4
    t.string "HNDLCODE", limit: 4
    t.decimal "VPREH", precision: 5
    t.decimal "VOLTO", precision: 3, scale: 1
    t.integer "STFAK"
    t.string "SAISO", limit: 4
    t.string "RMATP", limit: 40
    t.string "PRDHA", limit: 18
    t.date "MSTDV"
    t.string "MSTAV", limit: 2
    t.decimal "MAXL", precision: 15, scale: 3
    t.decimal "MAXH", precision: 15, scale: 3
    t.decimal "MAXB", precision: 15, scale: 3
    t.string "MAXDIM_UOM", limit: 3
    t.string "LVORM", limit: 1
    t.decimal "INHBR", precision: 13, scale: 3
    t.decimal "GEWTO", precision: 3, scale: 1
    t.decimal "FUELG", precision: 3
    t.decimal "ERGEW", precision: 13, scale: 3
    t.string "ERGEI", limit: 3
    t.string "ADPROF", limit: 3
    t.string "BISMT", limit: 40
    t.string "MEINS", limit: 3
    t.string "ZZSADC", limit: 2
    t.string "ZZQUOTR", limit: 2
    t.string "ZZPRDTYP", limit: 11
    t.string "ZZLINKART", limit: 18
    t.string "ZZHPLUG", limit: 2
    t.string "ZZECOW", limit: 1
    t.decimal "ZZSEQ", precision: 5
    t.decimal "ZZCOMP", precision: 3
    t.string "ZZUNTIE", limit: 1
    t.string "ZZBTYPE", limit: 2
    t.string "ZZBCODE", limit: 6
    t.string "ZZBNAME", limit: 18
    t.string "ZZTRTYP", limit: 2
    t.decimal "COLOR_ATINN", precision: 10
    t.decimal "SIZE1_ATINN", precision: 10
    t.decimal "SIZE2_ATINN", precision: 10
    t.string "COLOR", limit: 18
    t.string "SIZE1", limit: 18
    t.string "SIZE2", limit: 18
  end

  create_table "b_marm", primary_key: ["MATNR", "MEINH"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "EAN11", limit: 18
    t.string "NUMTP", limit: 2
    t.decimal "UMREN", precision: 5
    t.decimal "UMREZ", precision: 5
    t.decimal "BRGEW", precision: 13, scale: 3
    t.decimal "NTGEW", precision: 13, scale: 3
    t.string "GEWEI", limit: 3
    t.decimal "VOLUM", precision: 18, scale: 3
    t.string "VOLEH", limit: 3
    t.string "MEABM", limit: 3
    t.decimal "LAENG", precision: 13, scale: 3
    t.decimal "BREIT", precision: 13, scale: 3
    t.decimal "HOEHE", precision: 13, scale: 3
    t.string "MESUB", limit: 3
    t.decimal "NEST_FTR", precision: 3
    t.integer "MAX_STACK"
    t.decimal "CAPAUSE", precision: 15, scale: 3
    t.string "ZZECOM", limit: 1
  end

  create_table "b_maw1", primary_key: "MATNR", id: { type: :string, limit: 18 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BBTYP", limit: 1
    t.string "WHERL", limit: 3
    t.string "WEKGR", limit: 3
    t.string "WVRKM", limit: 3
    t.string "WAUSM", limit: 3
    t.string "SERVV", limit: 2
    t.string "WSTAW", limit: 17
    t.string "WMAAB", limit: 1
    t.string "WLADG", limit: 4
    t.date "LDBFL"
    t.date "LDBZL"
    t.date "LDVFL"
    t.date "LDVZL"
    t.string "LSTFL", limit: 2
    t.string "LSTVZ", limit: 2
    t.string "SSTUF", limit: 2
    t.date "VDBFL"
    t.date "VDBZL"
    t.date "VDVFL"
    t.date "VDVZL"
    t.string "WBKLA", limit: 4
    t.string "WHERR", limit: 3
    t.string "ZZHOUSE", limit: 1
    t.string "ZZPROD_TYPE", limit: 30
  end

  create_table "b_mlan", primary_key: ["MATNR", "ALAND"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "ALAND", limit: 3, null: false
    t.string "TAXIM", limit: 1
    t.string "TAXM1", limit: 1
    t.string "TAXM2", limit: 1
    t.string "TAXM3", limit: 1
    t.string "TAXM4", limit: 1
    t.string "TAXM5", limit: 1
    t.string "TAXM6", limit: 1
    t.string "TAXM7", limit: 1
    t.string "TAXM8", limit: 1
    t.string "TAXM9", limit: 1
  end

  create_table "b_other_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 40, null: false
    t.string "MATKL", limit: 9
    t.string "WGBEZ", limit: 20
    t.decimal "ATINN", precision: 10
    t.string "ATNAM", limit: 30
    t.string "ATWRT", limit: 30
  end

  create_table "b_t001w", primary_key: "WERKS", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "NAME1", limit: 30
    t.string "NAME2", limit: 30
    t.string "EKORG", limit: 4
    t.string "VKORG", limit: 4
    t.string "STRAS", limit: 30
    t.string "PFACH", limit: 10
    t.string "PSTLZ", limit: 10
    t.string "ORT01", limit: 25
    t.string "CITYC", limit: 4
    t.string "REGIO", limit: 3
    t.string "LAND1", limit: 3
  end

  create_table "b_t023t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "SPRAS", limit: 1, null: false
    t.string "MATKL", limit: 9, null: false
    t.string "WGBEZ", limit: 20
    t.index ["MATKL"], name: "b_t023t_MATKL_IDX"
  end

  create_table "b_t134t", primary_key: "MTART", id: { type: :string, limit: 50 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTBEZ", limit: 50
  end

  create_table "b_t141t", primary_key: "MMSTA", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTSTB", limit: 25
  end

  create_table "b_t142t", primary_key: "RAUBE", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "RBTXT", limit: 50
  end

  create_table "b_t143t", primary_key: "TEMPB", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TBTXT", limit: 50
  end

  create_table "b_tmbwt", primary_key: "BWSCL", id: { type: :string, limit: 50 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BWSCB", limit: 50
  end

  create_table "b_tptmt", primary_key: "MTPOS", id: { type: :string, limit: 50 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BEZEI", limit: 50
  end

  create_table "b_tskmt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.text "TAXKM", size: :tiny
    t.text "VTEXT", size: :tiny
  end

  create_table "b_tspat", primary_key: "SPART", id: { type: :string, limit: 50 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 50
  end

  create_table "b_ttgrt", primary_key: "TRAGR", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 50
  end

  create_table "b_tvegrt", primary_key: "MAGRV", id: { type: :string, limit: 50 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BEZEI", limit: 50
  end

  create_table "b_tvtyt", primary_key: "TRATY", id: { type: :string, limit: 50 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 50
  end

  create_table "b_twhmatgrt", primary_key: "WHMATGR", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TEXT", limit: 50
  end

  create_table "b_twptt", primary_key: "PLGTP", id: { type: :string, limit: 50 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 50
  end

  create_table "b_var_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "GENERIC", limit: 18, null: false
    t.string "MATNR", limit: 40, null: false
    t.decimal "CHAR1_ATINN", precision: 10, scale: 2
    t.string "CHAR1_ATNAM", limit: 30
    t.string "CHAR1_ATWRT", limit: 30
    t.string "CHAR1_GROUP_ATNAM"
    t.decimal "CHAR2_ATINN", precision: 10, scale: 2
    t.string "CHAR2_ATNAM", limit: 30
    t.string "CHAR2_ATWRT", limit: 30
    t.string "CHAR2_GROUP_ATNAM"
  end

  create_table "b_variant_detail", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.text "TYPE", size: :tiny
    t.text "GENERIC_MATNR", size: :tiny
    t.text "VARIANT_NUM", size: :tiny
    t.text "VARIANT_MATNR", size: :tiny
    t.text "DECRIPTION", size: :tiny
    t.text "KEY_OBJECT_NUM", size: :tiny
    t.text "COLOUR_INT_CHAR_NUM", size: :tiny
    t.text "COLOUR_CHARACTERISTIC_NAME", size: :tiny
    t.text "COLOUR", size: :tiny
    t.text "SIZE1_INT_CHAR_NUM", size: :tiny
    t.text "SIZE1_CHARACTERISTIC_NAME", size: :tiny
    t.text "SIZE1", size: :tiny
    t.text "SIZE2_INT_CHAR_NUM", size: :tiny
    t.text "SIZE2_CHARACTERISTIC_NAME", size: :tiny
    t.text "SIZE2", size: :tiny
    t.text "CHAR1_INT_CHAR_NUM", size: :tiny
    t.text "CHAR1_CHARACTERISTIC_NAME", size: :tiny
    t.text "CHAR1_CHARACTERISTIC_VALUE", size: :tiny
    t.text "CHAR2_INT_CHAR_NUM", size: :tiny
    t.text "CHAR2_CHARACTERISTIC_NAME", size: :tiny
    t.text "CHAR2_CHARACTERISTIC_VALUE", size: :tiny
    t.text "CHAR3_INT_CHAR_NUM", size: :tiny
    t.text "CHAR3_CHARACTERISTIC_NAME", size: :tiny
    t.text "CHAR3_CHARACTERISTIC_VALUE", size: :tiny
    t.index ["GENERIC_MATNR"], name: "b_variant_detail_GENERIC_MATNR_IDX", length: 255
  end

  create_table "classification_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "ATINN"
    t.string "CLASS"
    t.string "ATNAM"
  end

  create_table "comments", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "commentable_type", null: false
    t.bigint "commentable_id", null: false
    t.bigint "user_id", null: false
    t.string "comment_type"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "g_attyp_lu", primary_key: "ATTYP", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "DESCR", limit: 7
  end

  create_table "g_basic_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 40, null: false
    t.decimal "ATINN", precision: 10
    t.string "ATNAM", limit: 30
    t.string "ATWRT", limit: 30
  end

  create_table "g_brands", primary_key: "BRAND_ID", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_DESCR", limit: 30
  end

  create_table "g_makt1", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18
    t.string "SPRAS", limit: 1
    t.string "MAKTX", limit: 40
  end

  create_table "g_makt2", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18
    t.string "SPRAS", limit: 1
    t.string "MAKTX", limit: 40
  end

  create_table "g_mara", primary_key: "MATNR", id: { type: :string, limit: 40 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTART", limit: 4
    t.string "MATKL", limit: 9
    t.string "BSTME", limit: 3
    t.decimal "BRGEW", precision: 13, scale: 3
    t.decimal "NTGEW", precision: 13, scale: 3
    t.string "GEWEI", limit: 3
    t.decimal "VOLUM", precision: 13, scale: 3
    t.string "VOLEH", limit: 3
    t.decimal "ERVOL", precision: 13, scale: 3
    t.string "ERVOE", limit: 3
    t.string "WHSTC", limit: 2
    t.string "RAUBE", limit: 2
    t.string "TEMPB", limit: 2
    t.string "TRAGR", limit: 4
    t.string "SPART", limit: 2
    t.decimal "WESCH", precision: 13, scale: 3
    t.string "BWSCL", limit: 1
    t.string "EAN11", limit: 18
    t.string "NUMTP", limit: 2
    t.decimal "LAENG", precision: 13, scale: 3
    t.decimal "BREIT", precision: 13, scale: 3
    t.decimal "HOEHE", precision: 13, scale: 3
    t.string "MEABM", limit: 3
    t.string "VABME", limit: 1
    t.string "VHART", limit: 4
    t.string "MAGRV", limit: 4
    t.date "DATAB"
    t.date "LIQDT"
    t.string "SAISJ", limit: 4
    t.string "PLGTP", limit: 2
    t.string "SATNR", limit: 40
    t.string "ATTYP", limit: 2
    t.string "PMATA", limit: 40
    t.string "MSTAE", limit: 2
    t.date "MSTDE"
    t.string "TAKLV", limit: 1
    t.decimal "MHDRZ", precision: 4
    t.decimal "MHDHB", precision: 4
    t.string "INHME", limit: 3
    t.decimal "INHAL", precision: 13, scale: 3
    t.string "SPROF", limit: 1
    t.string "NRFHG", limit: 1
    t.string "IPRKZ", limit: 1
    t.string "MTPOS_MARA", limit: 4
    t.string "BBTYP", limit: 1
    t.string "WHMATGR", limit: 4
    t.string "HUTYP", limit: 4
    t.string "QGRP", limit: 4
    t.string "BRAND_ID", limit: 4
    t.string "HNDLCODE", limit: 4
    t.decimal "VPREH", precision: 5
    t.decimal "VOLTO", precision: 3, scale: 1
    t.integer "STFAK"
    t.string "SAISO", limit: 4
    t.string "RMATP", limit: 40
    t.string "PRDHA", limit: 18
    t.date "MSTDV"
    t.string "MSTAV", limit: 2
    t.decimal "MAXL", precision: 15, scale: 3
    t.decimal "MAXH", precision: 15, scale: 3
    t.decimal "MAXB", precision: 15, scale: 3
    t.string "MAXDIM_UOM", limit: 3
    t.string "LVORM", limit: 1
    t.decimal "INHBR", precision: 13, scale: 3
    t.decimal "GEWTO", precision: 3, scale: 1
    t.decimal "FUELG", precision: 3
    t.decimal "ERGEW", precision: 13, scale: 3
    t.string "ERGEI", limit: 3
    t.string "ADPROF", limit: 3
    t.string "BISMT", limit: 40
    t.string "MEINS", limit: 3
    t.string "ZZMODEL", limit: 20
    t.string "ZZ_UN_NUMBER", limit: 4
    t.string "ZZLID", limit: 1
    t.decimal "COLOR_ATINN", precision: 10
    t.decimal "SIZE1_ATINN", precision: 10
    t.decimal "SIZE2_ATINN", precision: 10
    t.string "COLOR", limit: 18
    t.string "SIZE1", limit: 18
    t.string "SIZE2", limit: 18
  end

  create_table "g_marm", primary_key: ["MATNR", "MEINH"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "EAN11", limit: 18
    t.string "NUMTP", limit: 2
    t.decimal "UMREN", precision: 5
    t.decimal "UMREZ", precision: 5
    t.decimal "BRGEW", precision: 13, scale: 3
    t.decimal "NTGEW", precision: 13, scale: 3
    t.string "GEWEI", limit: 3
    t.decimal "VOLUM", precision: 18, scale: 3
    t.string "VOLEH", limit: 3
    t.string "MEABM", limit: 3
    t.decimal "LAENG", precision: 13, scale: 3
    t.decimal "BREIT", precision: 13, scale: 3
    t.decimal "HOEHE", precision: 13, scale: 3
    t.string "MESUB", limit: 3
    t.decimal "NEST_FTR", precision: 3
    t.integer "MAX_STACK"
    t.decimal "CAPAUSE", precision: 15, scale: 3
  end

  create_table "g_maw1", primary_key: "MATNR", id: { type: :string, limit: 18 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BBTYP", limit: 1
    t.string "WHERL", limit: 3
    t.string "WEKGR", limit: 3
    t.string "WVRKM", limit: 3
    t.string "WAUSM", limit: 3
    t.string "SERVV", limit: 2
    t.string "WSTAW", limit: 17
    t.string "WMAAB", limit: 1
    t.string "WLADG", limit: 4
    t.date "LDBFL"
    t.date "LDBZL"
    t.date "LDVFL"
    t.date "LDVZL"
    t.string "LSTFL", limit: 2
    t.string "LSTVZ", limit: 2
    t.string "SSTUF", limit: 2
    t.date "VDBFL"
    t.date "VDBZL"
    t.date "VDVFL"
    t.date "VDVZL"
    t.string "WBKLA", limit: 4
    t.string "WHERR", limit: 3
  end

  create_table "g_mlan", primary_key: ["MATNR", "ALAND"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "ALAND", limit: 3, null: false
    t.string "TAXIM", limit: 1
    t.string "TAXM1", limit: 1
    t.string "TAXM2", limit: 1
    t.string "TAXM3", limit: 1
    t.string "TAXM4", limit: 1
    t.string "TAXM5", limit: 1
    t.string "TAXM6", limit: 1
    t.string "TAXM7", limit: 1
    t.string "TAXM8", limit: 1
    t.string "TAXM9", limit: 1
  end

  create_table "g_other_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 40
    t.string "MATKL", limit: 9
    t.string "WGBEZ", limit: 20
    t.decimal "ATINN", precision: 10
    t.string "ATNAM", limit: 30
    t.string "ATWRT", limit: 30
  end

  create_table "g_t001w", primary_key: "WERKS", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "NAME1", limit: 30
    t.string "NAME2", limit: 30
    t.string "EKORG", limit: 4
    t.string "VKORG", limit: 4
    t.string "STRAS", limit: 30
    t.string "PFACH", limit: 10
    t.string "PSTLZ", limit: 10
    t.string "ORT01", limit: 25
    t.string "CITYC", limit: 4
    t.string "REGIO", limit: 3
    t.string "LAND1", limit: 3
  end

  create_table "g_t023t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "SPRAS", limit: 1, null: false
    t.string "MATKL", limit: 9, null: false
    t.string "WGBEZ60", limit: 60
    t.index ["MATKL"], name: "g_t023t_MATKL_IDX"
  end

  create_table "g_t134t", primary_key: "MTART", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTBEZ", limit: 25
  end

  create_table "g_t141t", primary_key: "MMSTA", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTSTB", limit: 25
  end

  create_table "g_t142t", primary_key: "RAUBE", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "RBTXT", limit: 20
  end

  create_table "g_t143t", primary_key: "TEMPB", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TBTXT", limit: 60
  end

  create_table "g_t179t", primary_key: "PRODH", id: { type: :string, limit: 18 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 40
  end

  create_table "g_tmbwt", primary_key: "BWSCL", id: { type: :string, limit: 1 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BWSCB", limit: 40
  end

  create_table "g_tptmt", primary_key: "MTPOS", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BEZEI", limit: 20
  end

  create_table "g_tskmt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.text "TAXKM", size: :tiny
    t.text "VTEXT", size: :tiny
  end

  create_table "g_tspat", primary_key: "SPART", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 20
  end

  create_table "g_ttgrt", primary_key: "TRAGR", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 20
  end

  create_table "g_tvegrt", primary_key: "MAGRV", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BEZEI", limit: 20
  end

  create_table "g_tvtyt", primary_key: "TRATY", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 20
  end

  create_table "g_twhmatgrt", primary_key: "WHMATGR", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TEXT", limit: 40
  end

  create_table "g_twptt", primary_key: "PLGTP", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 20
  end

  create_table "g_var_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.integer "GENERIC", null: false
    t.string "MATNR", limit: 40, null: false
    t.string "CHAR1_ATNAM", limit: 30
    t.string "CHAR1_ATWRT", limit: 30
    t.string "CHAR1_GROUP_ATNAM"
    t.string "CHAR2_ATNAM", limit: 30
    t.string "CHAR2_ATWRT", limit: 30
    t.string "CHAR2_GROUP_ATNAM"
    t.string "CHAR3_ATNAM", limit: 30
    t.string "CHAR3_ATWRT", limit: 30
    t.string "CHAR3_GROUP_ATNAM"
  end

  create_table "g_variant_detail", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.text "TYPE", size: :tiny
    t.text "GENERIC_MATNR", size: :tiny
    t.text "VARIANT_NUM", size: :tiny
    t.text "VARIANT_MATNR", size: :tiny
    t.text "DECRIPTION", size: :tiny
    t.text "KEY_OBJECT_NUM", size: :tiny
    t.text "COLOUR_INT_CHAR_NUM", size: :tiny
    t.text "COLOUR_CHARACTERISTIC_NAME", size: :tiny
    t.text "COLOUR", size: :tiny
    t.text "SIZE1_INT_CHAR_NUM", size: :tiny
    t.text "SIZE1_CHARACTERISTIC_NAME", size: :tiny
    t.text "SIZE1", size: :tiny
    t.text "SIZE2_INT_CHAR_NUM", size: :tiny
    t.text "SIZE2_CHARACTERISTIC_NAME", size: :tiny
    t.text "SIZE2", size: :tiny
    t.text "CHAR1_INT_CHAR_NUM", size: :tiny
    t.text "CHAR1_CHARACTERISTIC_NAME", size: :tiny
    t.text "CHAR1_CHARACTERISTIC_VALUE", size: :tiny
    t.text "CHAR2_INT_CHAR_NUM", size: :tiny
    t.text "CHAR2_CHARACTERISTIC_NAME", size: :tiny
    t.text "CHAR2_CHARACTERISTIC_VALUE", size: :tiny
    t.text "CHAR3_INT_CHAR_NUM", size: :tiny
    t.text "CHAR3_CHARACTERISTIC_NAME", size: :tiny
    t.text "CHAR3_CHARACTERISTIC_VALUE", size: :tiny
    t.index ["GENERIC_MATNR"], name: "g_variant_detail_GENERIC_MATNR_IDX", length: 255
  end

  create_table "g_wrf_brands", primary_key: "BRAND_ID", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_TYPE", limit: 1
  end

  create_table "g_wrf_brands_t", primary_key: ["BRAND_ID", "LANGUAGE"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_ID", limit: 4, null: false
    t.string "LANGUAGE", limit: 1, null: false
    t.string "BRAND_DESCR", limit: 30
  end

  create_table "lookup_and_operations", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.integer "sort_order"
    t.string "attribute_name", limit: 256
    t.string "attribute_short_name", limit: 256
    t.string "tab", limit: 256
    t.string "tab_detail", limit: 256
    t.string "g_table", limit: 64
    t.string "g_field", limit: 64
    t.string "g_lookup", limit: 64
    t.string "m_table", limit: 64
    t.string "m_field", limit: 64
    t.string "m_lookup", limit: 64
    t.string "b_table", limit: 64
    t.string "b_field", limit: 64
    t.string "b_lookup", limit: 64
    t.string "consolidatable", limit: 64
    t.string "rule", limit: 64
    t.boolean "display", default: false
    t.string "lov", limit: 32
    t.boolean "updatable", default: false
    t.boolean "override", default: false
  end

  create_table "lookup_and_operations_old", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.integer "sort_order"
    t.string "attribute_name", limit: 256
    t.string "attribute_short_name", limit: 256
    t.string "tab", limit: 256
    t.string "tab_detail", limit: 256
    t.string "g_table", limit: 64
    t.string "g_field", limit: 64
    t.string "g_lookup", limit: 64
    t.string "m_table", limit: 64
    t.string "m_field", limit: 64
    t.string "m_lookup", limit: 64
    t.string "b_table", limit: 64
    t.string "b_field", limit: 64
    t.string "b_lookup", limit: 64
    t.string "consolidatable", limit: 64
    t.string "rule", limit: 64
    t.string "display", limit: 32
    t.string "lov", limit: 32
    t.boolean "updatable", default: false
    t.boolean "override", default: false
  end

  create_table "m_attyp_lu", primary_key: "ATTYP", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "DESCR", limit: 7
  end

  create_table "m_basic_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 40
    t.string "ATNAM", limit: 30
    t.string "ATWRT", limit: 30
  end

  create_table "m_brands", primary_key: "BRAND_ID", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_DESCR", limit: 30
  end

  create_table "m_makt1", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18
    t.string "SPRAS", limit: 1
    t.string "MAKTX", limit: 40
  end

  create_table "m_makt2", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18
    t.string "SPRAS", limit: 1
    t.string "MAKTX", limit: 40
  end

  create_table "m_mara", primary_key: "MATNR", id: { type: :string, limit: 40 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTART", limit: 4
    t.string "MATKL", limit: 9
    t.string "BSTME", limit: 3
    t.decimal "BRGEW", precision: 13, scale: 3
    t.decimal "NTGEW", precision: 13, scale: 3
    t.string "GEWEI", limit: 3
    t.decimal "VOLUM", precision: 13, scale: 3
    t.text "VOLEH", size: :tiny
    t.decimal "ERVOL", precision: 13, scale: 3
    t.string "ERVOE", limit: 3
    t.string "WHSTC", limit: 2
    t.string "RAUBE", limit: 2
    t.string "TEMPB", limit: 2
    t.string "TRAGR", limit: 4
    t.string "SPART", limit: 2
    t.decimal "WESCH", precision: 13, scale: 3
    t.string "BWSCL", limit: 1
    t.string "EAN11", limit: 18
    t.string "NUMTP", limit: 2
    t.string "ZPACKTYPE", limit: 2
    t.integer "ZPACKCMP", limit: 2
    t.decimal "ZPACKLGHT", precision: 13, scale: 3
    t.decimal "ZPACKWGHT", precision: 13, scale: 3
    t.decimal "ZPACKHGTH", precision: 13, scale: 3
    t.string "ZPACKUNIT", limit: 3
    t.decimal "ZPACKGW", precision: 13, scale: 3
    t.decimal "LAENG", precision: 13, scale: 3
    t.decimal "BREIT", precision: 13, scale: 3
    t.decimal "HOEHE", precision: 13, scale: 3
    t.string "MEABM", limit: 3
    t.string "VABME", limit: 1
    t.string "VHART", limit: 4
    t.string "MAGRV", limit: 4
    t.date "DATAB"
    t.date "LIQDT"
    t.string "SAISJ", limit: 4
    t.string "PLGTP", limit: 2
    t.string "SATNR", limit: 40
    t.string "ATTYP", limit: 2
    t.string "PMATA", limit: 40
    t.string "MSTAE", limit: 2
    t.date "MSTDE"
    t.string "TAKLV", limit: 1
    t.integer "MHDRZ", limit: 2
    t.integer "MHDHB", limit: 2
    t.string "INHME", limit: 3
    t.decimal "INHAL", precision: 13, scale: 3
    t.string "SPROF", limit: 1
    t.string "NRFHG", limit: 1
    t.string "IPRKZ", limit: 1
    t.string "MTPOS_MARA", limit: 4
    t.string "BBTYP", limit: 1
    t.string "WHMATGR", limit: 4
    t.string "HUTYP", limit: 4
    t.string "QGRP", limit: 4
    t.string "BRAND_ID", limit: 4
    t.string "HNDLCODE", limit: 4
    t.integer "ZZSEQ", limit: 3
    t.integer "ZZCOMP", limit: 2
    t.string "ZZBCODE", limit: 6
    t.integer "VPREH", limit: 3
    t.decimal "VOLTO", precision: 3, scale: 1
    t.integer "STFAK"
    t.string "SAISO", limit: 4
    t.string "RMATP", limit: 40
    t.string "PRDHA", limit: 18
    t.date "MSTDV"
    t.string "MSTAV", limit: 2
    t.decimal "MAXL", precision: 15, scale: 3
    t.decimal "MAXH", precision: 15, scale: 3
    t.decimal "MAXB", precision: 15, scale: 3
    t.string "MAXDIM_UOM", limit: 3
    t.string "LVORM", limit: 1
    t.decimal "INHBR", precision: 13, scale: 3
    t.decimal "GEWTO", precision: 3, scale: 1
    t.integer "FUELG", limit: 2
    t.decimal "ERGEW", precision: 13, scale: 3
    t.string "ERGEI", limit: 3
    t.string "ADPROF", limit: 3
    t.string "BISMT", limit: 40
    t.string "MEINS", limit: 3
    t.string "ZTVLIC", limit: 1
    t.string "ZSERVV", limit: 80
    t.string "ZZWINE", limit: 3
    t.string "ZLIMLST", limit: 1
    t.string "ZPRCLST", limit: 2
    t.string "ZSHIP", limit: 2
    t.string "ZDLVTYP", limit: 2
    t.string "ZDLV", limit: 1
    t.string "ZCOLL", limit: 1
    t.string "ZLOCK", limit: 1
    t.bigint "COLOR_ATINN"
    t.bigint "SIZE1_ATINN"
    t.bigint "SIZE2_ATINN"
    t.string "COLOR", limit: 18
    t.string "SIZE1", limit: 18
    t.string "SIZE2", limit: 18
  end

  create_table "m_marm", primary_key: ["MATNR", "MEINH"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "EAN11", limit: 18
    t.string "NUMTP", limit: 2
    t.decimal "UMREN", precision: 5
    t.decimal "UMREZ", precision: 5
    t.decimal "BRGEW", precision: 13, scale: 3
    t.decimal "NTGEW", precision: 13, scale: 3
    t.string "GEWEI", limit: 3
    t.decimal "VOLUM", precision: 18, scale: 3
    t.string "VOLEH", limit: 3
    t.string "MEABM", limit: 3
    t.decimal "LAENG", precision: 13, scale: 3
    t.decimal "BREIT", precision: 13, scale: 3
    t.decimal "HOEHE", precision: 13, scale: 3
    t.string "MESUB", limit: 3
    t.decimal "NEST_FTR", precision: 3
    t.integer "MAX_STACK"
    t.decimal "CAPAUSE", precision: 15, scale: 3
  end

  create_table "m_maw1", primary_key: "MATNR", id: { type: :string, limit: 18 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BBTYP", limit: 1
    t.string "WHERL", limit: 3
    t.string "WEKGR", limit: 3
    t.string "WVRKM", limit: 3
    t.string "WAUSM", limit: 3
    t.string "SERVV", limit: 2
    t.string "WMAAB", limit: 1
    t.string "WLADG", limit: 4
    t.date "LDBFL"
    t.date "LDBZL"
    t.date "LDVFL"
    t.date "LDVZL"
    t.string "LSTFL", limit: 2
    t.string "LSTVZ", limit: 2
    t.string "SSTUF", limit: 2
    t.date "VDBFL"
    t.date "VDBZL"
    t.date "VDVFL"
    t.date "VDVZL"
    t.string "WBKLA", limit: 4
    t.string "WHERR", limit: 3
  end

  create_table "m_mlan", primary_key: ["MATNR", "ALAND"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "ALAND", limit: 3, null: false
    t.string "TAXIM", limit: 1
    t.string "TAXM1", limit: 1
    t.string "TAXM2", limit: 1
    t.string "TAXM3", limit: 1
    t.string "TAXM4", limit: 1
    t.string "TAXM5", limit: 1
    t.string "TAXM6", limit: 1
    t.string "TAXM7", limit: 1
    t.string "TAXM8", limit: 1
    t.string "TAXM9", limit: 1
  end

  create_table "m_other_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 40
    t.string "MATKL", limit: 9
    t.string "WGBEZ", limit: 20
    t.decimal "ATINN", precision: 10
    t.string "ATNAM", limit: 30
    t.string "ATWRT", limit: 30
  end

  create_table "m_t001w", primary_key: "WERKS", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "NAME1", limit: 30
    t.string "NAME2", limit: 30
    t.string "EKORG", limit: 4
    t.string "VKORG", limit: 4
    t.string "STRAS", limit: 30
    t.string "PFACH", limit: 10
    t.string "PSTLZ", limit: 10
    t.string "ORT01", limit: 25
    t.string "CITYC", limit: 4
    t.string "REGIO", limit: 3
    t.string "LAND1", limit: 3
  end

  create_table "m_t023t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATKL", limit: 9, null: false
    t.string "WGBEZ", limit: 20
    t.string "WGBEZ60", limit: 60
    t.index ["MATKL"], name: "m_t023t_MATKL_IDX"
  end

  create_table "m_t134t", primary_key: "MTART", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTBEZ", limit: 25
  end

  create_table "m_t141t", primary_key: "MMSTA", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTSTB", limit: 25
  end

  create_table "m_t142t", primary_key: "RAUBE", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "RBTXT", limit: 20
  end

  create_table "m_t143t", primary_key: "TEMPB", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TBTXT", limit: 60
  end

  create_table "m_t179t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "PRODH", limit: 18, null: false
    t.string "VTEXT", limit: 40
    t.index ["PRODH"], name: "m_t179t_PRODH_IDX"
  end

  create_table "m_tmbwt", primary_key: "BWSCL", id: { type: :string, limit: 1 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BWSCB", limit: 40
  end

  create_table "m_tptmt", primary_key: "MTPOS", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BEZEI", limit: 20
  end

  create_table "m_tskmt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.text "TAXKM", size: :tiny
    t.text "VTEXT", size: :tiny
  end

  create_table "m_tspat", primary_key: "SPART", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 20
  end

  create_table "m_ttgrt", primary_key: "TRAGR", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 20
  end

  create_table "m_tvegrt", primary_key: "MAGRV", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BEZEI", limit: 20
  end

  create_table "m_tvtyt", primary_key: "TRATY", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 20
  end

  create_table "m_twhmatgrt", primary_key: "WHMATGR", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TEXT", limit: 40
  end

  create_table "m_twptt", primary_key: "PLGTP", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 20
  end

  create_table "m_var_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "GENERIC", limit: 18, null: false
    t.string "MATNR", limit: 40, null: false
    t.string "CHAR1_ATNAM", limit: 30
    t.string "CHAR1_ATWRT", limit: 30
    t.string "CHAR1_GROUP_ATNAM"
    t.string "CHAR2_ATNAM", limit: 30
    t.string "CHAR2_ATWRT", limit: 30
    t.string "CHAR2_GROUP_ATNAM"
  end

  create_table "m_variant_detail", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.text "TYPE", size: :tiny
    t.text "GENERIC_MATNR", size: :tiny
    t.text "VARIANT_NUM", size: :tiny
    t.text "VARIANT_MATNR", size: :tiny
    t.text "DECRIPTION", size: :tiny
    t.text "KEY_OBJECT_NUM", size: :tiny
    t.text "COLOUR_INT_CHAR_NUM", size: :tiny
    t.text "COLOUR_CHARACTERISTIC_NAME", size: :tiny
    t.text "COLOUR", size: :tiny
    t.text "SIZE1_INT_CHAR_NUM", size: :tiny
    t.text "SIZE1_CHARACTERISTIC_NAME", size: :tiny
    t.text "SIZE1", size: :tiny
    t.text "SIZE2_INT_CHAR_NUM", size: :tiny
    t.text "SIZE2_CHARACTERISTIC_NAME", size: :tiny
    t.text "SIZE2", size: :tiny
    t.text "CHAR1_INT_CHAR_NUM", size: :tiny
    t.text "CHAR1_CHARACTERISTIC_NAME", size: :tiny
    t.text "CHAR1_CHARACTERISTIC_VALUE", size: :tiny
    t.text "CHAR2_INT_CHAR_NUM", size: :tiny
    t.text "CHAR2_CHARACTERISTIC_NAME", size: :tiny
    t.text "CHAR2_CHARACTERISTIC_VALUE", size: :tiny
    t.text "CHAR3_INT_CHAR_NUM", size: :tiny
    t.text "CHAR3_CHARACTERISTIC_NAME", size: :tiny
    t.text "CHAR3_CHARACTERISTIC_VALUE", size: :tiny
    t.index ["GENERIC_MATNR"], name: "m_variant_detail_GENERIC_MATNR_IDX", length: 255
  end

  create_table "m_wrf_brands", primary_key: "BRAND_ID", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_TYPE", limit: 1
  end

  create_table "m_wrf_brands_t", primary_key: ["BRAND_ID", "LANGUAGE"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_ID", limit: 4, null: false
    t.string "LANGUAGE", limit: 1, null: false
    t.string "BRAND_DESCR", limit: 30
  end

  create_table "m_wrs1", primary_key: "ASORT", id: { type: :string, limit: 10 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTWEG", limit: 2
    t.string "VKORG", limit: 4
    t.date "DATAB"
    t.string "LSTFL", limit: 2
    t.date "DATBI"
    t.string "STATU", limit: 1
    t.string "KZLIK", limit: 1
    t.string "NLMATFB", limit: 1
    t.string "KOPRO", limit: 1
    t.string "SOTYP", limit: 1
  end

  create_table "m_wrs6", primary_key: ["ASORT", "MATKL"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "ASORT", limit: 10, null: false
    t.string "MATKL", limit: 9, null: false
    t.string "SSTUF", limit: 2
    t.string "PRIOT", limit: 1
  end

  create_table "m_wrst", primary_key: ["SPRAS", "ASORT"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "SPRAS", limit: 1, null: false
    t.string "ASORT", limit: 10, null: false
    t.string "NAME1", limit: 40
  end

  create_table "m_wrsz", primary_key: ["ASORT", "LFDNR"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "ASORT", limit: 10, null: false
    t.integer "LFDNR", limit: 3, null: false
    t.string "LOCNR", limit: 10
    t.string "KUNNR", limit: 10
    t.string "VKORG", limit: 4
    t.string "VTWEG", limit: 2
    t.string "SPART", limit: 2
    t.string "SONUT", limit: 1
    t.date "DATAB"
    t.date "DATBI"
    t.string "RANGF", limit: 1
    t.string "LIGRD", limit: 1
    t.string "ERNAM", limit: 12
    t.time "ERZET", precision: 6
    t.string "AENAM", limit: 12
    t.date "AEDAT"
    t.time "AEZET", precision: 6
  end

  create_table "m_zmk_adv_article", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.text "MATNR", size: :tiny, null: false
    t.text "MEINH", size: :tiny, null: false
    t.text "MAKTX", size: :tiny
    t.text "BRAND", size: :tiny
    t.text "BLOGO", size: :tiny
    t.text "ARTDESC1", size: :tiny
    t.text "DIM", size: :tiny
    t.text "VAR1", size: :tiny
    t.text "PACK", size: :tiny
    t.text "FAB1", size: :tiny
    t.text "FAB2", size: :tiny
    t.text "FAB3", size: :tiny
    t.text "FAB4", size: :tiny
    t.text "FAB5", size: :tiny
    t.text "FAB6", size: :tiny
    t.text "FAB7", size: :tiny
    t.text "FAB8", size: :tiny
    t.text "FAB9", size: :tiny
    t.text "FAB10", size: :tiny
    t.text "FAB11", size: :tiny
    t.text "FAB12", size: :tiny
    t.text "FAB13", size: :tiny
    t.text "FAB14", size: :tiny
    t.text "FAB15", size: :tiny
    t.text "FAB16", size: :tiny
    t.text "FAB17", size: :tiny
    t.text "FAB18", size: :tiny
    t.text "FAB19", size: :tiny
    t.text "FAB20", size: :tiny
    t.text "FAB21", size: :tiny
    t.text "FAB22", size: :tiny
    t.text "FAB23", size: :tiny
    t.text "FAB24", size: :tiny
    t.text "FAB25", size: :tiny
    t.text "FAB26", size: :tiny
    t.text "FAB27", size: :tiny
    t.text "FAB28", size: :tiny
    t.text "FAB29", size: :tiny
    t.text "FAB30", size: :tiny
    t.text "ZFABW1", size: :tiny
    t.text "ZFABW2", size: :tiny
    t.text "ZFABW3", size: :tiny
    t.text "ZFABW4", size: :tiny
    t.text "ZFABW5", size: :tiny
    t.text "ZFABW6", size: :tiny
    t.text "ZFABW7", size: :tiny
    t.text "ZFABW8", size: :tiny
    t.text "ZFABW9", size: :tiny
    t.text "ZFABW10", size: :tiny
    t.text "ZFABW11", size: :tiny
    t.text "ZFABW12", size: :tiny
    t.text "ZFABW13", size: :tiny
    t.text "ZFABW14", size: :tiny
    t.text "ZFABW15", size: :tiny
    t.text "ZFABW16", size: :tiny
    t.text "ZFABW17", size: :tiny
    t.text "ZFABW18", size: :tiny
    t.text "ZFABW19", size: :tiny
    t.text "ZFABW20", size: :tiny
    t.text "ZFABW21", size: :tiny
    t.text "ZFABW22", size: :tiny
    t.text "ZFABW23", size: :tiny
    t.text "ZFABW24", size: :tiny
    t.text "ZFABW25", size: :tiny
    t.text "ZFABW26", size: :tiny
    t.text "ZFABW27", size: :tiny
    t.text "ZFABW28", size: :tiny
    t.text "ZFABW29", size: :tiny
    t.text "ZFABW30", size: :tiny
    t.text "QPN18", size: :tiny
    t.text "QPN19", size: :tiny
    t.text "QPN20", size: :tiny
    t.text "CAM1B", size: :tiny
    t.text "CAM2B", size: :tiny
    t.text "CAM3G", size: :tiny
    t.text "CAM4G", size: :tiny
    t.text "CAM5G", size: :tiny
    t.text "CAM6G", size: :tiny
    t.text "CAM7G", size: :tiny
    t.text "CAM8G", size: :tiny
    t.text "CAM9M", size: :tiny
    t.text "CAM10M", size: :tiny
    t.text "IC01", size: :tiny
    t.text "IC02", size: :tiny
    t.text "IC03", size: :tiny
    t.text "IC04", size: :tiny
    t.text "IC05", size: :tiny
    t.text "IC06", size: :tiny
    t.text "IC07", size: :tiny
    t.text "IC08", size: :tiny
    t.text "IC09", size: :tiny
    t.text "IC10", size: :tiny
    t.text "ERNAM", size: :tiny
    t.date "ERSDA"
    t.text "AENAM", size: :tiny
    t.date "LAEDA"
    t.text "WQPN1", size: :tiny
    t.text "WQPN2", size: :tiny
    t.text "SHOP_ONLINE", size: :tiny
    t.text "WEB", size: :tiny
    t.text "WQPND1", size: :tiny
    t.text "WQPND2", size: :tiny
    t.text "CAM1G", size: :tiny
    t.text "CAM1GDESC", size: :tiny
    t.text "CAM2G", size: :tiny
    t.text "CAM2GDESC", size: :tiny
    t.text "CAM3GDESC", size: :tiny
    t.text "CAM1O", size: :tiny
    t.text "CAM1ODESC", size: :tiny
    t.text "PACKSIZE", size: :tiny
    t.text "ZPACKTYPE", size: :tiny
    t.decimal "ZPACKLGHT", precision: 13, scale: 3
    t.decimal "ZPACKWGHT", precision: 13, scale: 3
    t.decimal "ZPACKHGTH", precision: 13, scale: 3
    t.text "ZPACKUNIT", size: :tiny
    t.decimal "ZPACKGW", precision: 13, scale: 3
    t.integer "ZPACKCMP", limit: 2
    t.text "ZZTRTYP", size: :tiny
    t.text "ZLIMLST", size: :tiny
    t.text "ZPRCLST", size: :tiny
    t.text "ZSHIP", size: :tiny
    t.text "ZDLVTYP", size: :tiny
    t.text "ZDLV", size: :tiny
    t.text "ZCOLL", size: :tiny
    t.text "ZLOCK", size: :tiny
    t.text "ZSERLIND", size: :tiny
    t.text "ZBLOCKED", size: :tiny
  end

  create_table "match_fields", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.integer "match_id"
    t.integer "lookup_id"
    t.string "mara_id"
    t.string "overridden_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "match_units", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.bigint "match_id", null: false
    t.integer "quantity"
    t.string "prefixed_matnr"
    t.string "ean"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_match_units_on_match_id"
  end

  create_table "matchable_articles", primary_key: "prefixed_matnr", id: { type: :string, limit: 20 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "banner", limit: 10
    t.string "type", limit: 10
    t.string "article_type", limit: 25
    t.string "matnr", limit: 18
    t.string "description", limit: 40
    t.string "brand_desc", limit: 30
    t.integer "number_variants"
    t.text "barcodes", size: :tiny
    t.text "vendors", size: :tiny
    t.boolean "matched", default: false
    t.boolean "active", default: false
    t.text "group", size: :tiny
    t.index ["active", "matched", "article_type"], name: "matchtable_articles_active_IDX"
    t.index ["banner"], name: "matchable_articles_banner_IDX"
    t.index ["group"], name: "matchable_articles_group_IDX", length: 255
  end

  create_table "matchable_articles_oldold", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "banner", limit: 10
    t.string "type", limit: 10
    t.string "article_type", limit: 25
    t.string "matnr", limit: 18
    t.string "prefixed_matnr", limit: 20
    t.string "description", limit: 40
    t.string "brand_desc", limit: 30
    t.integer "number_variants"
    t.string "barcodes", limit: 999
    t.string "vendors", limit: 999
    t.boolean "matched", default: false
    t.boolean "active", default: false
    t.integer "group"
    t.index ["active", "matched", "article_type"], name: "matchtable_articles_active_IDX"
    t.index ["matnr"], name: "matchable_articles_matnr_IDX"
    t.index ["prefixed_matnr"], name: "matchable_articles_prefixed_matnr_IDX"
  end

  create_table "matched_articles", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.integer "match_id"
    t.string "prefixed_matnr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "main", default: false
    t.boolean "uom_mismatch", default: false
    t.boolean "bad_category", default: false
    t.boolean "bad_material", default: false
    t.boolean "duplicate", default: false
    t.boolean "tax_diff"
    t.boolean "uom_review"
    t.string "comment"
    t.datetime "reported_at"
  end

  create_table "matches", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "matched_articles_count"
  end

  create_table "motor_alert_locks", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.bigint "alert_id", null: false
    t.string "lock_timestamp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alert_id", "lock_timestamp"], name: "index_motor_alert_locks_on_alert_id_and_lock_timestamp", unique: true
    t.index ["alert_id"], name: "index_motor_alert_locks_on_alert_id"
  end

  create_table "motor_alerts", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.bigint "query_id", null: false
    t.string "name", null: false
    t.text "description"
    t.text "to_emails", null: false
    t.boolean "is_enabled", default: true, null: false
    t.text "preferences", null: false
    t.bigint "author_id"
    t.string "author_type"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "motor_alerts_name_unique_index", unique: true
    t.index ["query_id"], name: "index_motor_alerts_on_query_id"
    t.index ["updated_at"], name: "index_motor_alerts_on_updated_at"
  end

  create_table "motor_api_configs", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "name", null: false
    t.string "url", null: false
    t.text "preferences", null: false
    t.text "credentials", null: false
    t.text "description"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "motor_api_configs_name_unique_index", unique: true
  end

  create_table "motor_audits", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "auditable_id"
    t.string "auditable_type"
    t.string "associated_id"
    t.string "associated_type"
    t.bigint "user_id"
    t.string "user_type"
    t.string "username"
    t.string "action"
    t.text "audited_changes"
    t.bigint "version", default: 0
    t.text "comment"
    t.string "remote_address"
    t.string "request_uuid"
    t.datetime "created_at"
    t.index ["associated_type", "associated_id"], name: "motor_auditable_associated_index"
    t.index ["auditable_type", "auditable_id", "version"], name: "motor_auditable_index"
    t.index ["created_at"], name: "index_motor_audits_on_created_at"
    t.index ["request_uuid"], name: "index_motor_audits_on_request_uuid"
    t.index ["user_id", "user_type"], name: "motor_auditable_user_index"
  end

  create_table "motor_configs", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "key", null: false
    t.text "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_motor_configs_on_key", unique: true
    t.index ["updated_at"], name: "index_motor_configs_on_updated_at"
  end

  create_table "motor_dashboards", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.text "preferences", null: false
    t.bigint "author_id"
    t.string "author_type"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "motor_dashboards_title_unique_index", unique: true
    t.index ["updated_at"], name: "index_motor_dashboards_on_updated_at"
  end

  create_table "motor_forms", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.text "api_path", null: false
    t.string "http_method", null: false
    t.text "preferences", null: false
    t.bigint "author_id"
    t.string "author_type"
    t.datetime "deleted_at"
    t.string "api_config_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "motor_forms_name_unique_index", unique: true
    t.index ["updated_at"], name: "index_motor_forms_on_updated_at"
  end

  create_table "motor_queries", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.text "sql_body", null: false
    t.text "preferences", null: false
    t.bigint "author_id"
    t.string "author_type"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "motor_queries_name_unique_index", unique: true
    t.index ["updated_at"], name: "index_motor_queries_on_updated_at"
  end

  create_table "motor_resources", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "name", null: false
    t.text "preferences", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_motor_resources_on_name", unique: true
    t.index ["updated_at"], name: "index_motor_resources_on_updated_at"
  end

  create_table "motor_taggable_tags", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.bigint "tag_id", null: false
    t.bigint "taggable_id", null: false
    t.string "taggable_type", null: false
    t.index ["tag_id"], name: "index_motor_taggable_tags_on_tag_id"
    t.index ["taggable_id", "taggable_type", "tag_id"], name: "motor_polymorphic_association_tag_index", unique: true
  end

  create_table "motor_tags", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "motor_tags_name_unique_index", unique: true
  end

  create_table "other_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BMC_DESC"
    t.string "ATINN"
    t.string "ATNAM"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "user_type", default: "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "variant_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "ATINN"
    t.string "CLASS"
    t.string "ATNAM"
  end

  add_foreign_key "comments", "users"
  add_foreign_key "match_units", "matches"
  add_foreign_key "motor_alert_locks", "motor_alerts", column: "alert_id"
  add_foreign_key "motor_alerts", "motor_queries", column: "query_id"
  add_foreign_key "motor_taggable_tags", "motor_tags", column: "tag_id"
end
