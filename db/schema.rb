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

ActiveRecord::Schema[7.0].define(version: 2025_03_26_061318) do
  create_table "articles", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
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

  create_table "audits", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
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
    t.string "MATNR", limit: 40
    t.string "ARTICLE_DESC", limit: 40
    t.decimal "ATINN", precision: 10
    t.string "ATNAM", limit: 30
    t.string "ATWRT", limit: 30
    t.index ["MATNR"], name: "b_basic_char_MATNR_IDX"
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

  create_table "b_mara", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "MATNR", limit: 40
    t.string "MTART", limit: 4
    t.string "MATKL", limit: 9
    t.string "BISMT", limit: 40
    t.string "MEINS", limit: 3
    t.string "BSTME", limit: 3
    t.decimal "BRGEW", precision: 13, scale: 3
    t.decimal "NTGEW", precision: 13, scale: 3
    t.string "GEWEI", limit: 3
    t.decimal "VOLUM", precision: 13, scale: 3
    t.string "VOLEH"
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
    t.string "HERKL", limit: 3
  end

  create_table "b_marc", primary_key: "MATNR", id: { type: :string, limit: 18 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "ZZPROHIBITED", limit: 1
    t.string "ZZPROHIB_COMMENT", limit: 2
    t.string "STAWN", limit: 17
    t.string "EXPME", limit: 3
  end

  create_table "b_marm", primary_key: ["MATNR", "MEINH"], charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
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
    t.integer "LVL"
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
    t.string "MATNR", limit: 40
    t.string "ARTICLE_DESC", limit: 40
    t.string "MATKL", limit: 9
    t.string "WGBEZ", limit: 20
    t.decimal "ATINN", precision: 10
    t.string "ATNAM", limit: 30
    t.string "ATWRT", limit: 30
    t.index ["MATNR"], name: "b_other_char_MATNR_IDX"
  end

  create_table "b_stko", primary_key: "MATNR", id: { type: :string, limit: 18 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BMEIN", limit: 3
    t.decimal "BMENG", precision: 13, scale: 3
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

  create_table "b_t005t", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "LAND1", limit: 3
    t.string "LANDX", limit: 15
    t.string "NATIO", limit: 15
    t.string "LANDX50", limit: 50
    t.string "NATIO50", limit: 50
    t.string "PRQ_SPREGT", limit: 30
  end

  create_table "b_t134t", primary_key: "MTART", id: { type: :string, limit: 50 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTBEZ", limit: 50
  end

  create_table "b_t141t", primary_key: "MMSTA", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTSTB", limit: 25
  end

  create_table "b_t142t", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "RAUBE", limit: 2
    t.string "RBTXT", limit: 50
  end

  create_table "b_t143t", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "TEMPB", limit: 2
    t.string "TBTXT", limit: 50
  end

  create_table "b_thutypt", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "HUTYP", limit: 4
    t.string "TEXT", limit: 40
  end

  create_table "b_tmbwt", primary_key: "BWSCL", id: { type: :string, limit: 50 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BWSCB", limit: 50
  end

  create_table "b_tptmt", primary_key: "MTPOS", id: { type: :string, limit: 50 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BEZEI", limit: 50
  end

  create_table "b_tqgrpt", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "QGRP", limit: 4
    t.string "TEXT", limit: 40
  end

  create_table "b_tskmt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.text "TAXKM", size: :tiny
    t.text "VTEXT", size: :tiny
  end

  create_table "b_tspat", primary_key: "SPART", id: { type: :string, limit: 50 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 50
  end

  create_table "b_ttgrt", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "TRAGR", limit: 4
    t.string "VTEXT", limit: 20
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

  create_table "b_twhstct", primary_key: "WHSTC", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "TEXT", limit: 40
  end

  create_table "b_twptt", primary_key: "PLGTP", id: { type: :string, limit: 50 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 50
  end

  create_table "b_var_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "GENERIC", limit: 18
    t.string "MATNR", limit: 40
    t.string "ARTICLE_DESC", limit: 40
    t.string "VARIANT_DESC", limit: 40
    t.string "CLASSIFICATION", limit: 30
    t.string "CHAR1_ATNAM", limit: 30
    t.string "CHAR1_ATWRT", limit: 30
    t.string "CHAR1_GROUP_ATNAM"
    t.string "CHAR2_ATNAM", limit: 30
    t.string "CHAR2_ATWRT", limit: 30
    t.string "CHAR2_GROUP_ATNAM"
    t.index ["GENERIC"], name: "b_var_char_GENERIC_IDX"
  end

  create_table "b_wrf_brands_t", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "BRAND_ID", limit: 4
    t.string "LANGUAGE", limit: 1
    t.string "BRAND_DESCR", limit: 30
  end

  create_table "classification_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "ATINN"
    t.string "CLASS"
    t.string "ATNAM"
  end

  create_table "comments", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
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
    t.string "MATNR", limit: 40
    t.string "ARTICLE_DESC", limit: 40
    t.decimal "ATINN", precision: 10
    t.string "ATNAM", limit: 30
    t.string "ATWRT", limit: 30
    t.index ["MATNR"], name: "g_basic_char_MATNR_IDX"
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

  create_table "g_mara", primary_key: "MATNR", id: { type: :string, limit: 40 }, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "MTART", limit: 4
    t.string "MATKL", limit: 9
    t.string "BISMT", limit: 40
    t.string "MEINS", limit: 3
    t.string "BSTME", limit: 3
    t.decimal "BRGEW", precision: 13, scale: 3
    t.decimal "NTGEW", precision: 13, scale: 3
    t.string "GEWEI", limit: 3
    t.decimal "VOLUM", precision: 13, scale: 3
    t.string "VOLEH"
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
    t.string "HERKL", limit: 3
  end

  create_table "g_marm", primary_key: ["MATNR", "MEINH"], charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
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
    t.integer "LVL"
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
    t.string "ARTICLE_DESC", limit: 40
    t.string "MATKL", limit: 9
    t.string "WGBEZ", limit: 20
    t.decimal "ATINN", precision: 10
    t.string "ATNAM", limit: 30
    t.string "ATWRT", limit: 30
    t.index ["MATNR"], name: "g_other_char_MATNR_IDX"
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

  create_table "g_t005t", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "LAND1", limit: 3
    t.string "LANDX", limit: 15
    t.string "NATIO", limit: 15
    t.string "LANDX50", limit: 50
    t.string "NATIO50", limit: 50
    t.string "PRQ_SPREGT", limit: 30
  end

  create_table "g_t023t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATKL", limit: 9
    t.string "WGBEZ", limit: 20
    t.string "WGBEZ60", limit: 60
    t.index ["MATKL"], name: "g_t023t_MATKL_IDX"
  end

  create_table "g_t134t", primary_key: "MTART", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTBEZ", limit: 25
  end

  create_table "g_t141t", primary_key: "MMSTA", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTSTB", limit: 25
  end

  create_table "g_t142t", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "RAUBE", limit: 2
    t.string "RBTXT", limit: 50
  end

  create_table "g_t143t", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "TEMPB", limit: 2
    t.string "TBTXT", limit: 50
  end

  create_table "g_t179t", primary_key: "PRODH", id: { type: :string, limit: 18 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 40
  end

  create_table "g_thutypt", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "HUTYP", limit: 4
    t.string "TEXT", limit: 40
  end

  create_table "g_tmbwt", primary_key: "BWSCL", id: { type: :string, limit: 1 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BWSCB", limit: 40
  end

  create_table "g_tptmt", primary_key: "MTPOS", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BEZEI", limit: 20
  end

  create_table "g_tqgrpt", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "QGRP", limit: 4
    t.string "TEXT", limit: 40
  end

  create_table "g_tskmt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.text "TAXKM", size: :tiny
    t.text "VTEXT", size: :tiny
  end

  create_table "g_tspat", primary_key: "SPART", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 20
  end

  create_table "g_ttgrt", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "TRAGR", limit: 4
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

  create_table "g_twhstct", primary_key: "WHSTC", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "TEXT", limit: 40
  end

  create_table "g_twptt", primary_key: "PLGTP", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 20
  end

  create_table "g_var_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "GENERIC", limit: 40
    t.string "MATNR", limit: 40
    t.string "ARTICLE_DESC", limit: 40
    t.string "VARIANT_DESC", limit: 40
    t.string "CLASSIFICATION", limit: 30
    t.string "CHAR1_ATNAM", limit: 30
    t.string "CHAR1_ATWRT", limit: 70
    t.string "CHAR1_GROUP_ATNAM"
    t.string "CHAR2_ATNAM", limit: 30
    t.string "CHAR2_ATWRT", limit: 70
    t.string "CHAR2_GROUP_ATNAM"
    t.index ["GENERIC"], name: "g_var_char_GENERIC_IDX"
  end

  create_table "g_wrf_brands", primary_key: "BRAND_ID", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_TYPE", limit: 1
  end

  create_table "g_wrf_brands_t", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "BRAND_ID", limit: 4
    t.string "LANGUAGE", limit: 1
    t.string "BRAND_DESCR", limit: 30
  end

  create_table "licenses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "client_name"
    t.string "license_key", limit: 4000
    t.date "expire_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["license_key"], name: "index_license_key", length: 700
  end

  create_table "lkp_merch_hier", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "LVL1_CODE", limit: 18
    t.string "LVL1_DESC", limit: 40
    t.string "LVL2_CODE", limit: 18
    t.string "LVL2_DESSC", limit: 40
    t.string "LVL3_CODE", limit: 18
    t.string "LVL3_DESC", limit: 40
    t.string "LVL4_CODE", limit: 18
    t.string "LVL4_DESC", limit: 40
  end

  create_table "lookup_and_operations", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.integer "sort_order"
    t.text "attribute_name", size: :tiny
    t.text "attribute_short_name", size: :tiny
    t.text "tab", size: :tiny
    t.text "tab_detail", size: :tiny
    t.text "g_table", size: :tiny
    t.text "g_field", size: :tiny
    t.text "g_lookup", size: :tiny
    t.text "m_table", size: :tiny
    t.text "m_field", size: :tiny
    t.text "m_lookup", size: :tiny
    t.text "b_table", size: :tiny
    t.text "b_field", size: :tiny
    t.text "b_lookup", size: :tiny
    t.text "consolidatable", size: :tiny
    t.text "rule", size: :tiny
    t.integer "display"
    t.text "lov", size: :tiny
    t.integer "updatable"
    t.integer "override"
  end

  create_table "m_attyp_lu", primary_key: "ATTYP", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "DESCR", limit: 7
  end

  create_table "m_basic_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 40
    t.string "ARTICLE_DESC", limit: 40
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

  create_table "m_mara", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "MATNR", limit: 40
    t.string "MTART", limit: 4
    t.string "MATKL", limit: 9
    t.string "BISMT", limit: 40
    t.string "MEINS", limit: 3
    t.string "BSTME", limit: 3
    t.decimal "BRGEW", precision: 13, scale: 3
    t.decimal "NTGEW", precision: 13, scale: 3
    t.string "GEWEI", limit: 3
    t.decimal "VOLUM", precision: 13, scale: 3
    t.string "VOLEH"
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
    t.string "HERKL", limit: 3
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
    t.integer "LVL"
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
    t.string "WSTAW", limit: 17
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
    t.string "ARTICLE_DESC", limit: 40
    t.string "MATKL", limit: 9
    t.string "WGBEZ", limit: 20
    t.decimal "ATINN", precision: 10
    t.string "ATNAM", limit: 30
    t.string "ATWRT", limit: 30
    t.string "CHECK_DUPL"
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

  create_table "m_t005t", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "LAND1", limit: 3
    t.string "LANDX", limit: 15
    t.string "NATIO", limit: 15
    t.string "LANDX50", limit: 50
    t.string "NATIO50", limit: 50
    t.string "PRQ_SPREGT", limit: 30
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

  create_table "m_t142t", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "RAUBE", limit: 2
    t.string "RBTXT", limit: 50
  end

  create_table "m_t143t", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "TEMPB", limit: 2
    t.string "TBTXT", limit: 50
  end

  create_table "m_t179t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "PRODH", limit: 18, null: false
    t.string "VTEXT", limit: 40
    t.index ["PRODH"], name: "m_t179t_PRODH_IDX"
  end

  create_table "m_thutypt", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "HUTYP", limit: 4
    t.string "TEXT", limit: 40
  end

  create_table "m_tmbwt", primary_key: "BWSCL", id: { type: :string, limit: 1 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BWSCB", limit: 40
  end

  create_table "m_tptmt", primary_key: "MTPOS", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BEZEI", limit: 20
  end

  create_table "m_tqgrpt", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "QGRP", limit: 4
    t.string "TEXT", limit: 40
  end

  create_table "m_tskmt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.text "TAXKM", size: :tiny
    t.text "VTEXT", size: :tiny
  end

  create_table "m_tspat", primary_key: "SPART", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 20
  end

  create_table "m_ttgrt", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "TRAGR", limit: 4
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

  create_table "m_twhstct", primary_key: "WHSTC", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "TEXT", limit: 40
  end

  create_table "m_twptt", primary_key: "PLGTP", id: { type: :string, limit: 2 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "VTEXT", limit: 20
  end

  create_table "m_var_char", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "GENERIC", limit: 18
    t.string "MATNR", limit: 40
    t.string "ARTICLE_DESC", limit: 40
    t.string "VARIANT_DESC", limit: 40
    t.string "CLASSIFICATION", limit: 30
    t.string "CHAR1_ATNAM", limit: 30
    t.string "CHAR1_ATWRT", limit: 30
    t.string "CHAR1_GROUP_ATNAM"
    t.string "CHAR2_ATNAM", limit: 30
    t.string "CHAR2_ATWRT", limit: 30
    t.string "CHAR2_GROUP_ATNAM"
    t.index ["GENERIC"], name: "m_var_char_GENERIC_IDX"
  end

  create_table "m_wrf_brands", primary_key: "BRAND_ID", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_TYPE", limit: 1
  end

  create_table "m_wrf_brands_t", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "BRAND_ID", limit: 4
    t.string "LANGUAGE", limit: 1
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

  create_table "match_characteristics", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.integer "match_id"
    t.string "mara_id"
    t.string "char_name"
    t.string "char_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mara_id"], name: "index_match_characteristics_on_mara_id"
    t.index ["match_id"], name: "index_match_characteristics_on_match_id"
  end

  create_table "match_classes", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.integer "match_id"
    t.string "mara_id"
    t.string "class_name"
    t.string "class_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mara_id"], name: "index_match_classes_on_mara_id"
    t.index ["match_id"], name: "index_match_classes_on_match_id"
  end

  create_table "match_fields", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.integer "match_id"
    t.integer "lookup_id"
    t.string "mara_id"
    t.string "overridden_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "match_taxes", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "match_id"
    t.integer "tax_classification"
    t.string "tax_country"
    t.string "tax_table"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_match_taxes_on_match_id"
  end

  create_table "match_units", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "match_id", null: false
    t.integer "quantity"
    t.string "prefixed_matnr"
    t.string "ean"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "original_unit"
    t.index ["match_id"], name: "index_match_units_on_match_id"
  end

  create_table "match_variants", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.integer "match_id"
    t.string "matnr"
    t.integer "variant_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "cmd_group", limit: 128
    t.string "status", limit: 100
    t.string "last_sale_in_months", limit: 100
    t.string "stock_level", limit: 100
    t.string "vendor_codes", limit: 40
    t.integer "batch"
    t.date "batch_completion_date"
    t.index ["active", "matched", "article_type"], name: "matchtable_articles_active_IDX"
    t.index ["article_type"], name: "index_matchable_articles_on_article_type"
    t.index ["banner"], name: "matchable_articles_banner_IDX"
    t.index ["cmd_group"], name: "matchable_articles_group_IDX"
  end

  create_table "matched_articles", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.integer "match_id"
    t.string "prefixed_matnr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "main", default: false
    t.boolean "tax_diff"
    t.boolean "uom_review"
    t.string "comment"
    t.datetime "reported_at"
    t.boolean "match_duplicate"
    t.boolean "refer_to_buyers", default: false
    t.boolean "refer_to_merch", default: false
    t.boolean "refer_to_replenishment", default: false
    t.boolean "refer_to_finance", default: false
    t.boolean "refer_to_master_data", default: false
  end

  create_table "matches", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "matched_articles_count"
    t.string "review_status"
    t.string "harmonized"
    t.index ["harmonized"], name: "index_matches_on_harmonized"
  end

  create_table "motor_alert_locks", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "alert_id", null: false
    t.string "lock_timestamp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alert_id", "lock_timestamp"], name: "index_motor_alert_locks_on_alert_id_and_lock_timestamp", unique: true
    t.index ["alert_id"], name: "index_motor_alert_locks_on_alert_id"
  end

  create_table "motor_alerts", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
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

  create_table "motor_api_configs", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
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

  create_table "motor_audits", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
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

  create_table "motor_configs", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "key", null: false
    t.text "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_motor_configs_on_key", unique: true
    t.index ["updated_at"], name: "index_motor_configs_on_updated_at"
  end

  create_table "motor_dashboards", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
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

  create_table "motor_forms", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
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

  create_table "motor_queries", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
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

  create_table "motor_resources", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "name", null: false
    t.text "preferences", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_motor_resources_on_name", unique: true
    t.index ["updated_at"], name: "index_motor_resources_on_updated_at"
  end

  create_table "motor_taggable_tags", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.bigint "tag_id", null: false
    t.bigint "taggable_id", null: false
    t.string "taggable_type", null: false
    t.index ["tag_id"], name: "index_motor_taggable_tags_on_tag_id"
    t.index ["taggable_id", "taggable_type", "tag_id"], name: "motor_polymorphic_association_tag_index", unique: true
  end

  create_table "motor_tags", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "motor_tags_name_unique_index", unique: true
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_unicode_520_ci", force: :cascade do |t|
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

  add_foreign_key "comments", "users"
  add_foreign_key "match_units", "matches", on_update: :cascade, on_delete: :cascade
  add_foreign_key "motor_alert_locks", "motor_alerts", column: "alert_id"
  add_foreign_key "motor_alerts", "motor_queries", column: "query_id"
  add_foreign_key "motor_taggable_tags", "motor_tags", column: "tag_id"
end
