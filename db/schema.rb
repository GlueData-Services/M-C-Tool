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

ActiveRecord::Schema[7.0].define(version: 2022_09_07_072503) do
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

  create_table "b_ausp", primary_key: ["OBJEK", "ATINN", "ATZHL", "MAFID", "KLART", "ADZHL"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "OBJEK", limit: 50, null: false
    t.bigint "ATINN", null: false
    t.integer "ATZHL", limit: 2, null: false
    t.string "MAFID", limit: 1, null: false
    t.string "KLART", limit: 3, null: false
    t.integer "ADZHL", limit: 2, null: false
    t.string "ATWRT", limit: 30
    t.float "ATFLV", limit: 53
    t.string "ATAWE", limit: 3
    t.float "ATFLB", limit: 53
    t.string "ATAW1", limit: 3
    t.string "ATCOD", limit: 1
    t.float "ATTLV", limit: 53
    t.float "ATTLB", limit: 53
    t.string "ATPRZ", limit: 1
    t.float "ATINC", limit: 53
    t.string "ATAUT", limit: 1
    t.string "AENNR", limit: 12
    t.date "DATUV"
    t.string "LKENZ", limit: 1
    t.bigint "ATIMB"
    t.integer "ATZIS", limit: 2
    t.integer "ATSRT", limit: 2
    t.string "ATVGLART", limit: 1
    t.date "DATUB"
  end

  create_table "b_brands", primary_key: "BRAND_ID", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_DESCR", limit: 30
  end

  create_table "b_cabn", primary_key: ["ATINN", "ADZHL"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.bigint "ATINN", null: false
    t.integer "ADZHL", limit: 2, null: false
    t.string "ATNAM", limit: 30
    t.string "ATIDN", limit: 2
    t.string "ATFOR", limit: 4
    t.integer "ANZST"
    t.integer "ANZDZ"
    t.string "ATVOR", limit: 1
    t.string "ATSCH", limit: 30
    t.string "ATKLE", limit: 1
    t.string "ATKON", limit: 5
    t.string "ATEND", limit: 1
    t.string "ATAEN", limit: 1
    t.string "ATKLA", limit: 10
    t.string "ATERF", limit: 1
    t.string "ATEIN", limit: 1
    t.string "ATAME", limit: 1
    t.string "ATWME", limit: 1
    t.string "MSEHI", limit: 3
    t.integer "ATDIM"
    t.string "ATGLO", limit: 1
    t.string "ATGLA", limit: 1
    t.string "ATINT", limit: 1
    t.string "ATUNS", limit: 1
    t.string "ATSON", limit: 1
    t.string "ATTAB", limit: 30
    t.string "ATFEL", limit: 30
    t.string "ATTEI", limit: 30
    t.string "ATPRT", limit: 30
    t.string "ATPRR", limit: 40
    t.string "ATPRF", limit: 30
    t.string "ATWRD", limit: 1
    t.string "ATFOD", limit: 1
    t.string "ATHIE", limit: 1
    t.integer "ATDEX", limit: 2
    t.string "ATFGA", limit: 1
    t.string "ATVSC", limit: 1
    t.string "ANAME", limit: 12
    t.date "ADATU"
    t.string "VNAME", limit: 12
    t.date "VDATU"
    t.string "ATXAC", limit: 1
    t.string "ATYAC", limit: 1
    t.string "ATMST", limit: 1
    t.string "ATWSO", limit: 1
    t.string "ATBSO", limit: 1
    t.date "DATUV"
    t.string "TECHV", limit: 12
    t.string "AENNR", limit: 12
    t.string "LKENZ", limit: 1
    t.string "ATWRI", limit: 1
    t.string "DOKAR", limit: 3
    t.string "DOKNR", limit: 25
    t.string "DOKVR", limit: 2
    t.string "DOKTL", limit: 3
    t.bigint "KNOBJ"
    t.string "ATINP", limit: 1
    t.string "ATVIE", limit: 1
    t.string "WERKS", limit: 4
    t.string "KATALOGART", limit: 1
    t.string "AUSWAHLMGE", limit: 8
    t.string "ATHKA", limit: 1
    t.string "ATHKO", limit: 1
    t.bigint "CLINT"
    t.string "ATTOL", limit: 1
    t.string "ATZUS", limit: 1
    t.string "ATVPL", limit: 1
    t.string "ATAUTH", limit: 3
    t.string "COUNTRYGRP", limit: 1
  end

  create_table "b_cawn", primary_key: ["ATINN", "ATZHL", "ADZHL"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.bigint "ATINN", null: false
    t.integer "ATZHL", limit: 2, null: false
    t.integer "ADZHL", limit: 2, null: false
    t.string "ATWRT", limit: 30
    t.float "ATFLV", limit: 53
    t.float "ATFLB", limit: 53
    t.string "ATCOD", limit: 1
    t.string "ATSTD", limit: 1
    t.string "ATAWE", limit: 3
    t.string "ATAW1", limit: 3
    t.string "ATIDN", limit: 2
    t.string "SPRAS", limit: 1
    t.integer "TXTNR", limit: 2
    t.date "DATUV"
    t.string "TECHV", limit: 12
    t.string "AENNR", limit: 12
    t.string "LKENZ", limit: 1
    t.string "DOKAR", limit: 3
    t.string "DOKNR", limit: 25
    t.string "DOKVR", limit: 2
    t.string "DOKTL", limit: 3
    t.integer "ATZHH", limit: 2
    t.bigint "KNOBJ"
    t.string "ATWHI", limit: 1
    t.float "ATTLV", limit: 53
    t.float "ATTLB", limit: 53
    t.string "ATPRZ", limit: 1
    t.float "ATINC", limit: 53
    t.string "ATVPL", limit: 1
  end

  create_table "b_eina", primary_key: ["MATNR", "INFNR"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "INFNR", limit: 10, null: false
    t.string "MATNR", limit: 18, null: false
    t.string "MATKL", limit: 9
    t.string "MEINS", limit: 3
    t.string "VABME", limit: 1
    t.integer "UMREZ", limit: 3
    t.integer "UMREN", limit: 3
    t.string "RUECK", limit: 2
    t.string "RELIF", limit: 1
    t.string "IDNLF", limit: 35
    t.string "LIFNR", limit: 10
    t.string "LOEKZ", limit: 1
    t.string "SORTL", limit: 10
    t.string "TELF1", limit: 16
    t.integer "MAHN1", limit: 2
    t.integer "MAHN2", limit: 2
    t.integer "MAHN3", limit: 2
    t.string "URZLA", limit: 3
    t.string "URZTP", limit: 1
    t.string "REGIO", limit: 3
    t.string "LTSNR", limit: 6
    t.string "WGLIF", limit: 18
    t.date "LIFAB"
    t.date "LIFBI"
  end

  create_table "b_eine", primary_key: ["INFNR", "EKORG", "ESOKZ", "WERKS"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "INFNR", limit: 10, null: false
    t.string "EKORG", limit: 4, null: false
    t.string "ESOKZ", limit: 1, null: false
    t.string "WERKS", limit: 4, null: false
    t.integer "MHDRZ", limit: 2
    t.string "IPRKZ", limit: 1
    t.decimal "NETPR", precision: 11, scale: 2
    t.string "EKGRP", limit: 3
    t.string "RDPRF", limit: 4
    t.integer "APLFZ", limit: 2
    t.date "ANGDT"
    t.date "ERDAT"
    t.string "LOEKZ", limit: 1
    t.string "WAERS", limit: 5
    t.decimal "MINBM", precision: 13, scale: 3
    t.decimal "NORBM", precision: 13, scale: 3
    t.decimal "UEBTO", precision: 3, scale: 1
    t.string "UEBTK", limit: 1
    t.string "ANGNR", limit: 10
    t.string "BSTYP", limit: 1
    t.string "EBELN", limit: 10
    t.integer "EBELP", limit: 3
    t.date "DATLB"
    t.integer "PEINH", limit: 3
    t.string "BPRME", limit: 3
    t.date "PRDAT"
    t.integer "BPUMZ", limit: 3
    t.integer "BPUMN", limit: 3
    t.string "WEBRE", limit: 1
    t.decimal "EFFPR", precision: 11, scale: 2
    t.string "EKKOL", limit: 4
    t.string "SKTOF", limit: 1
    t.string "KZABS", limit: 1
    t.string "MWSKZ", limit: 2
    t.string "EBONU", limit: 2
    t.string "BSTAE", limit: 4
    t.string "MEPRF", limit: 1
    t.string "INCO2", limit: 28
    t.string "XERSN", limit: 1
    t.string "EBON2", limit: 2
    t.string "EBONF", limit: 1
    t.decimal "BSTMA", precision: 13, scale: 3
    t.string "SGT_SSREL", limit: 1
  end

  create_table "b_eord", primary_key: ["MATNR", "WERKS", "ZEORD"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.integer "ZEORD", limit: 3, null: false
    t.date "VDATU"
    t.date "ERDAT"
    t.string "LIFNR", limit: 10
    t.date "BDATU"
    t.string "FLIFN", limit: 1
    t.string "EORTP", limit: 1
    t.string "RESWK", limit: 4
    t.string "NOTKZ", limit: 1
    t.string "AUTET", limit: 1
    t.string "MEINS", limit: 3
    t.string "LOGSY", limit: 10
  end

  create_table "b_inob", primary_key: ["CUOBJ", "OBJEK"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.bigint "CUOBJ", null: false
    t.string "KLART", limit: 3
    t.string "OBTAB", limit: 30
    t.string "OBJEK", limit: 50, null: false
    t.string "ROBTAB", limit: 30
    t.string "ROBJEK", limit: 50
    t.bigint "CLINT"
    t.string "STATU", limit: 1
    t.integer "CUCOZHL", limit: 2
    t.bigint "PARENT"
    t.bigint "ROOT"
    t.string "EXPERTE", limit: 1
    t.string "MATNR", limit: 18
    t.date "DATUV"
    t.string "TECHS", limit: 12
  end

  create_table "b_klah", primary_key: "CLINT", id: :bigint, default: nil, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "KLART", limit: 3
    t.string "CLASS", limit: 18
    t.string "STATU", limit: 1
    t.string "KLAGR", limit: 10
    t.string "BGRSE", limit: 3
    t.string "BGRKL", limit: 3
    t.string "BGRKP", limit: 3
    t.string "ANAME", limit: 12
    t.string "ADATU", limit: 12
    t.string "VNAME", limit: 12
    t.string "VDATU", limit: 12
    t.string "VONDT", limit: 12
    t.string "BISDT", limit: 12
    t.integer "ANZUO", limit: 3
    t.string "PRAUS", limit: 1
    t.string "SICHT", limit: 10
    t.string "DOKNR", limit: 25
    t.string "DOKAR", limit: 3
    t.string "DOKTL", limit: 3
    t.string "DOKVR", limit: 2
    t.string "DINKZ", limit: 1
    t.string "NNORM", limit: 10
    t.string "NORMN", limit: 20
    t.string "NORMB", limit: 70
    t.string "NRMT1", limit: 70
    t.string "NRMT2", limit: 70
    t.string "AUSGD", limit: 12
    t.string "VERSD", limit: 12
    t.integer "VERSI", limit: 2
    t.string "LEIST", limit: 20
    t.string "VERWE", limit: 1
    t.string "SPART", limit: 2
    t.string "LREF3", limit: 3
    t.string "WWSKZ", limit: 1
    t.string "WWSSI", limit: 1
    t.string "POTPR", limit: 1
    t.string "CLOBK", limit: 1
    t.string "CLMUL", limit: 1
    t.string "CVIEW", limit: 10
    t.string "DISST", limit: 3
    t.string "MEINS", limit: 3
    t.string "CLMOD", limit: 1
    t.string "VWSTL", limit: 1
    t.string "VWPLA", limit: 1
    t.string "CLALT", limit: 1
    t.integer "LBREI", limit: 2
    t.string "BNAME", limit: 20
    t.string "MAXBL", limit: 18
    t.bigint "KNOBJ"
    t.string "LOCLA", limit: 1
    t.string "KATALOG", limit: 30
    t.string "KDOKAZ", limit: 1
    t.string "GENRKZ", limit: 1
  end

  create_table "b_ksml", primary_key: ["CLINT", "POSNR", "ADZHL"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.bigint "CLINT", null: false
    t.integer "POSNR", limit: 2, null: false
    t.integer "ADZHL", limit: 2, null: false
    t.string "ABTEI", limit: 10
    t.string "DINKB", limit: 3
    t.string "HERKU", limit: 10
    t.bigint "IMERK"
    t.bigint "OMERK"
    t.string "KLART", limit: 3
    t.string "RELEV", limit: 1
    t.date "DATUV"
    t.string "TECHV", limit: 12
    t.string "AENNR", limit: 12
    t.string "LKENZ", limit: 1
    t.string "VMERK", limit: 1
    t.integer "DPLEN", limit: 2
    t.integer "OFFST"
    t.integer "BLLIN", limit: 2
    t.string "DPTXT", limit: 1
    t.string "CUSTR", limit: 40
    t.string "JUSTR", limit: 1
    t.string "COLOR", limit: 1
    t.string "INTSF", limit: 1
    t.string "INVER", limit: 1
    t.integer "CKBOX"
    t.integer "INPUT"
    t.bigint "AMERK"
    t.string "MKENN", limit: 15
  end

  create_table "b_kssk", primary_key: ["OBJEK", "MAFID", "KLART", "CLINT", "ADZHL"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "OBJEK", limit: 50, null: false
    t.string "MAFID", limit: 1, null: false
    t.string "KLART", limit: 3, null: false
    t.bigint "CLINT", null: false
    t.integer "ADZHL", limit: 2, null: false
    t.integer "ZAEHL"
    t.string "STATU", limit: 1
    t.string "STDCL", limit: 1
    t.string "REKRI", limit: 1
    t.string "AENNR", limit: 12
    t.string "DATUV", limit: 12
    t.string "LKENZ", limit: 1
    t.string "DATUB", limit: 12
  end

  create_table "b_mabw", primary_key: ["MATNR", "ZHLER"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.integer "ZHLER", null: false
    t.string "WERKS", limit: 4
    t.string "LGORT", limit: 4
    t.string "LGNUM", limit: 3
    t.string "LGTYP", limit: 3
    t.string "VKORG", limit: 4
    t.string "VTWEG", limit: 2
    t.string "BWKEY", limit: 4
    t.string "BWTAR", limit: 10
  end

  create_table "b_makt", primary_key: ["MATNR", "SPRAS"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "SPRAS", limit: 1, null: false
    t.string "MAKTX", limit: 40
    t.string "MAKTG", limit: 40
  end

  create_table "b_mamt", primary_key: ["MATNR", "SPRAS", "MEINH", "MTXID", "LFDNR"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "SPRAS", limit: 1, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "MTXID", limit: 2, null: false
    t.integer "LFDNR", limit: 2, null: false
    t.string "MAKTM", limit: 40
  end

  create_table "b_mapr", primary_key: ["MATNR", "WERKS"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.bigint "PNUM1"
    t.string "PERKZ", limit: 1
    t.string "PERIV", limit: 2
    t.date "DATUM"
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
    t.integer "VPREH", limit: 3
    t.decimal "VOLTO", precision: 3, scale: 1
    t.integer "STFAK"
    t.string "SAISO", limit: 4
    t.string "RMATP", limit: 40
    t.string "PRDHA", limit: 18
    t.date "MSTDV"
    t.string "MSTAV", limit: 2
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
    t.string "ZZSADC", limit: 2
    t.string "ZZQUOTR", limit: 2
    t.string "ZZPRDTYP", limit: 11
    t.string "ZZLINKART", limit: 18
    t.string "ZZHPLUG", limit: 2
    t.string "ZZECOW", limit: 1
    t.integer "ZZSEQ", limit: 3
    t.integer "ZZCOMP", limit: 2
    t.string "ZZUNTIE", limit: 1
    t.string "ZZBTYPE", limit: 2
    t.string "ZZBCODE", limit: 6
    t.string "ZZBNAME", limit: 18
    t.string "ZZTRTYP", limit: 2
    t.bigint "COLOR_ATINN"
    t.bigint "SIZE1_ATINN"
    t.bigint "SIZE2_ATINN"
    t.string "COLOR", limit: 18
    t.string "SIZE1", limit: 18
    t.string "SIZE2", limit: 18
  end

  create_table "b_marc", primary_key: ["MATNR", "WERKS"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.string "BWSCL", limit: 1
    t.string "MMSTA", limit: 2
    t.date "MMSTD"
    t.string "ZZFUM", limit: 1
    t.string "ZZEXPALLW", limit: 1
    t.string "ZZSOR", limit: 40
    t.string "ZZEXPIND", limit: 3
    t.string "ZZINSREQ", limit: 1
    t.string "HERKL", limit: 3
    t.string "EKGRP", limit: 3
    t.string "ZZHAZCHM", limit: 8
    t.string "XMCNG", limit: 1
    t.integer "WEBAZ", limit: 2
    t.string "VRBWK", limit: 4
    t.string "VRBMT", limit: 18
    t.decimal "VRBFK", precision: 4, scale: 2
    t.date "VRBDT"
    t.decimal "TRAME", precision: 13, scale: 3
    t.string "STAWN", limit: 17
    t.string "SERNP", limit: 4
    t.string "RDPRF", limit: 4
    t.string "PRCTR", limit: 10
    t.integer "PLIFZ", limit: 2
    t.string "PERKZ", limit: 1
    t.string "MTVFP", limit: 2
    t.string "MRPPP", limit: 3
    t.decimal "MABST", precision: 13, scale: 3
    t.string "MAABC", limit: 1
    t.string "LGFSB", limit: 4
    t.string "LFRHY", limit: 3
    t.string "LADGR", limit: 4
    t.string "KAUTB", limit: 1
    t.integer "GI_PR_TIME", limit: 2
    t.string "FPRFM", limit: 3
    t.string "EXPME", limit: 3
    t.decimal "EISLO", precision: 13, scale: 3
    t.decimal "EISBE", precision: 13, scale: 3
    t.string "DISPR", limit: 4
    t.string "DISPO", limit: 3
    t.string "DISMM", limit: 2
    t.string "BESKZ", limit: 1
    t.string "AUSME", limit: 3
    t.string "ABCIN", limit: 1
    t.string "LVORM", limit: 1
    t.string "HERKR", limit: 3
    t.string "XCHAR", limit: 1
    t.decimal "MINBE", precision: 13, scale: 3
    t.decimal "BSTMI", precision: 13, scale: 3
    t.decimal "BSTMA", precision: 13, scale: 3
    t.decimal "BSTFE", precision: 13, scale: 3
    t.decimal "BSTRF", precision: 13, scale: 3
    t.string "AUTRU", limit: 1
    t.string "MFRGR", limit: 8
    t.string "APOKZ", limit: 1
    t.string "ZZSADC", limit: 1
    t.string "ZZMODREQ", limit: 8
    t.date "ZZSORDAT"
    t.integer "LFMON", limit: 2
  end

  create_table "b_mard", primary_key: ["MATNR", "WERKS", "LGORT"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.string "LGORT", limit: 4, null: false
    t.string "LVORM", limit: 1
    t.string "SPERR", limit: 1
    t.integer "LFMON", limit: 2
  end

  create_table "b_marm", primary_key: ["MATNR", "MEINH"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "EAN11", limit: 18
    t.string "NUMTP", limit: 2
    t.integer "UMREN", limit: 3
    t.integer "UMREZ", limit: 3
    t.decimal "HOEHE", precision: 13, scale: 3
    t.decimal "BREIT", precision: 13, scale: 3
    t.decimal "LAENG", precision: 13, scale: 3
    t.string "MEABM", limit: 3
    t.decimal "BRGEW", precision: 13, scale: 3
    t.string "GEWEI", limit: 3
    t.decimal "VOLUM", precision: 13, scale: 3
    t.string "VOLEH", limit: 3
    t.string "MESUB", limit: 3
    t.integer "NEST_FTR", limit: 2
    t.integer "MAX_STACK"
    t.decimal "CAPAUSE", precision: 15, scale: 3
    t.string "ZZECOM", limit: 1
  end

  create_table "b_mast", primary_key: ["MATNR", "WERKS", "STLAN", "STLNR", "STLAL"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.string "STLAN", limit: 1, null: false
    t.string "STLNR", limit: 8, null: false
    t.string "STLAL", limit: 2, null: false
    t.decimal "LOSVN", precision: 13, scale: 3
    t.decimal "LOSBS", precision: 13, scale: 3
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

  create_table "b_mbew", primary_key: ["MATNR", "BWKEY", "BWTAR"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "BWKEY", limit: 4, null: false
    t.string "BWTAR", limit: 10, null: false
    t.string "LVORM", limit: 1
    t.string "BKLAS", limit: 4
    t.bigint "TIMESTAMP"
    t.decimal "LBKUM", precision: 13, scale: 3
    t.decimal "SALK3", precision: 13, scale: 2
    t.string "VPRSV", limit: 1
    t.decimal "VERPR", precision: 11, scale: 2
    t.decimal "STPRS", precision: 11, scale: 2
    t.integer "PEINH", limit: 3
    t.integer "LFMON", limit: 2
    t.decimal "STPRV", precision: 11, scale: 2
    t.date "LAEPR"
    t.string "MLMAA", limit: 1
    t.decimal "VKSAL", precision: 13, scale: 2
    t.bigint "KALN1"
    t.bigint "KALNR"
  end

  create_table "b_mean", primary_key: ["MATNR", "MEINH", "LFNUM"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "LFNUM", limit: 5, null: false
    t.string "EAN11", limit: 18
    t.string "EANTP", limit: 2
    t.string "HPEAN", limit: 1
  end

  create_table "b_mean_concat", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "HPEAN", limit: 1
    t.string "EANTP", limit: 2
    t.string "LFNUM", limit: 5, null: false
    t.text "BARCODES", size: :medium
    t.index ["MATNR"], name: "idx_bme_matnr"
  end

  create_table "b_mean_flat", primary_key: "MATNR", id: :string, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "EA_EAN11"
    t.string "CS_EAN11"
    t.string "LAY_EAN11"
    t.string "PAK_EAN11"
    t.string "PAL_EAN11"
  end

  create_table "b_mlan", primary_key: ["MATNR", "ALAND"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "ALAND", limit: 3, null: false
    t.string "TAXIM", limit: 1
    t.string "TAXM1", limit: 1
  end

  create_table "b_mlea", primary_key: ["MATNR", "MEINH", "LIFNR", "LFNUM"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "LIFNR", limit: 10, null: false
    t.string "LFNUM", limit: 5, null: false
    t.string "EAN11", limit: 18
    t.string "LFEAN", limit: 1
    t.string "LARTN", limit: 35
    t.string "GTIN_VARIANT", limit: 2
  end

  create_table "b_mvke", primary_key: ["MATNR", "VKORG", "VTWEG"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "VKORG", limit: 4, null: false
    t.string "VTWEG", limit: 2, null: false
    t.string "PLGTP", limit: 2
    t.string "PMATN", limit: 18
    t.string "MTPOS", limit: 4
    t.string "VRKME", limit: 3
    t.string "PRODH", limit: 18
    t.string "LVORM", limit: 1
    t.date "LDVFL"
    t.date "LDVZL"
    t.string "LSTFL", limit: 2
    t.string "LSTVZ", limit: 2
    t.string "SSTUF", limit: 2
    t.date "VDBFL"
    t.date "VDBZL"
    t.date "VDVFL"
    t.date "VDVZL"
    t.string "SKTOF", limit: 1
    t.string "KTGRM", limit: 2
    t.string "VAVME", limit: 1
    t.string "ZZONLSHP", limit: 2
    t.string "ZZVASPOS", limit: 1
  end

  create_table "b_stko", primary_key: ["STLTY", "STLNR", "STLAL", "STKOZ"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "STLTY", limit: 1, null: false
    t.string "STLNR", limit: 8, null: false
    t.string "STLAL", limit: 2, null: false
    t.integer "STKOZ", null: false
    t.string "BMEIN", limit: 3
    t.decimal "BMENG", precision: 13, scale: 3
    t.string "STKTX", limit: 40
    t.integer "STLST", limit: 2
    t.string "GUIDX", limit: 32
  end

  create_table "b_stpo", primary_key: ["STLTY", "STLNR", "STLKN", "STPOZ"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "STLTY", limit: 1, null: false
    t.string "STLNR", limit: 8, null: false
    t.integer "STLKN", null: false
    t.integer "STPOZ", null: false
    t.string "IDNRK", limit: 18
    t.decimal "MENGE", precision: 13, scale: 3
    t.string "POSTP", limit: 1
    t.string "POSNR", limit: 4
    t.string "SORTF", limit: 10
    t.string "MEINS", limit: 3
    t.string "FMENG", limit: 1
    t.decimal "AUSCH", precision: 5, scale: 2
    t.string "RVREL", limit: 1
    t.string "SANFE", limit: 1
    t.string "SANKA", limit: 1
    t.string "REKRS", limit: 1
    t.string "POTX1", limit: 40
    t.string "POTX2", limit: 40
    t.string "OBJTY", limit: 1
    t.string "LGORT", limit: 4
    t.string "ALEKZ", limit: 1
    t.string "GUIDX", limit: 32
  end

  create_table "b_swor", primary_key: ["CLINT", "SPRAS", "KLPOS"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.bigint "CLINT", null: false
    t.string "SPRAS", limit: 1, null: false
    t.integer "KLPOS", limit: 2, null: false
    t.string "KSCHL", limit: 40
    t.string "KSCHG", limit: 40
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

  create_table "b_tskmt", primary_key: ["TATYP", "TAXKM"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TATYP", limit: 50, null: false
    t.string "TAXKM", limit: 50, null: false
    t.string "VTEXT", limit: 50
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

  create_table "b_variant_detail", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TYPE", limit: 10
    t.string "GENERIC_MATNR", limit: 18
    t.integer "VARIANT_NUM"
    t.string "VARIANT_MATNR", limit: 18
    t.string "DECRIPTION", limit: 40
    t.string "KEY_OBJECT_NUM", limit: 18
    t.decimal "COLOUR_INT_CHAR_NUM", precision: 10, scale: 2
    t.string "COLOUR_CHARACTERISTIC_NAME", limit: 30
    t.string "COLOUR", limit: 30
    t.integer "SIZE1_INT_CHAR_NUM"
    t.string "SIZE1_CHARACTERISTIC_NAME", limit: 30
    t.string "SIZE1", limit: 30
    t.integer "SIZE2_INT_CHAR_NUM"
    t.string "SIZE2_CHARACTERISTIC_NAME", limit: 30
    t.string "SIZE2", limit: 30
    t.decimal "CHAR1_INT_CHAR_NUM", precision: 10, scale: 2
    t.string "CHAR1_CHARACTERISTIC_NAME", limit: 30
    t.string "CHAR1_CHARACTERISTIC_VALUE", limit: 30
    t.decimal "CHAR2_INT_CHAR_NUM", precision: 10, scale: 2
    t.string "CHAR2_CHARACTERISTIC_NAME", limit: 30
    t.string "CHAR2_CHARACTERISTIC_VALUE", limit: 30
    t.decimal "CHAR3_INT_CHAR_NUM", precision: 10, scale: 2
    t.string "CHAR3_CHARACTERISTIC_NAME", limit: 30
    t.string "CHAR3_CHARACTERISTIC_VALUE", limit: 30
    t.index ["GENERIC_MATNR"], name: "b_variant_detail_GENERIC_MATNR_IDX"
  end

  create_table "b_wlk1", primary_key: ["FILIA", "ARTNR", "VRKME", "DATBI", "LFDNR"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "FILIA", limit: 10, null: false
    t.string "ARTNR", limit: 18, null: false
    t.string "VRKME", limit: 3, null: false
    t.date "DATBI", null: false
    t.integer "LFDNR", limit: 2, null: false
    t.date "DATAB"
    t.date "DATAE"
    t.string "URSAC", limit: 18
    t.string "QUELL", limit: 1
    t.string "PFLKN", limit: 1
    t.integer "ANZAL", limit: 2
    t.string "AKTIO", limit: 10
    t.string "STRLI", limit: 1
    t.string "SSTAT", limit: 1
    t.string "STRNR", limit: 18
  end

  create_table "b_wlk2", primary_key: ["MATNR", "VKORG", "VTWEG", "WERKS"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "VKORG", limit: 4, null: false
    t.string "VTWEG", limit: 2, null: false
    t.string "WERKS", limit: 4, null: false
    t.date "DATAE"
    t.string "AENAM", limit: 12
    t.string "KWDHT", limit: 1
    t.string "PRERF", limit: 1
    t.date "VKDAB"
    t.date "VKBIS"
    t.string "MSTAV", limit: 2
    t.date "MSTDV"
    t.string "RBZUL", limit: 1
    t.string "SCAGR", limit: 4
  end

  create_table "b_wrf_brands", primary_key: "BRAND_ID", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_TYPE", limit: 1
  end

  create_table "b_wrf_brands_t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_ID", limit: 4, null: false
    t.string "LANGUAGE", limit: 1, null: false
    t.string "BRAND_DESCR", limit: 30
  end

  create_table "b_wrst", primary_key: ["SPRAS", "ASORT"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "SPRAS", limit: 1, null: false
    t.string "ASORT", limit: 10, null: false
    t.string "NAME1", limit: 40
  end

  create_table "b_wrsz", primary_key: ["ASORT", "LFDNR"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "g_brands", primary_key: "BRAND_ID", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_DESCR", limit: 30
  end

  create_table "g_eina", primary_key: ["MATNR", "INFNR"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "INFNR", limit: 10, null: false
    t.string "MATNR", limit: 18, null: false
    t.string "MATKL", limit: 9
    t.string "MEINS", limit: 3
    t.string "VABME", limit: 1
    t.integer "UMREZ", limit: 3
    t.integer "UMREN", limit: 3
    t.string "RUECK", limit: 2
    t.string "RELIF", limit: 1
    t.string "IDNLF", limit: 35
    t.string "LIFNR", limit: 10
    t.string "LOEKZ", limit: 1
    t.string "SORTL", limit: 10
    t.string "TELF1", limit: 16
    t.integer "MAHN1", limit: 2
    t.integer "MAHN2", limit: 2
    t.integer "MAHN3", limit: 2
    t.string "URZLA", limit: 3
    t.string "URZTP", limit: 1
    t.string "REGIO", limit: 3
    t.string "LTSNR", limit: 6
    t.string "WGLIF", limit: 18
    t.string "LIFAB", limit: 24
    t.string "LIFBI", limit: 24
  end

  create_table "g_eine", primary_key: ["INFNR", "EKORG", "ESOKZ", "WERKS"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "INFNR", limit: 10, null: false
    t.string "EKORG", limit: 4, null: false
    t.string "ESOKZ", limit: 1, null: false
    t.string "WERKS", limit: 4, null: false
    t.integer "MHDRZ", limit: 2
    t.string "IPRKZ", limit: 1
    t.decimal "NETPR", precision: 11, scale: 2
    t.string "EKGRP", limit: 3
    t.string "RDPRF", limit: 4
    t.integer "APLFZ", limit: 2
    t.string "ANGDT", limit: 24
    t.string "ERDAT", limit: 24
    t.string "LOEKZ", limit: 1
    t.string "WAERS", limit: 5
    t.decimal "MINBM", precision: 13, scale: 3
    t.decimal "NORBM", precision: 13, scale: 3
    t.decimal "UEBTO", precision: 3, scale: 1
    t.string "UEBTK", limit: 1
    t.string "ANGNR", limit: 10
    t.string "BSTYP", limit: 1
    t.string "EBELN", limit: 10
    t.integer "EBELP", limit: 3
    t.string "DATLB", limit: 24
    t.integer "PEINH", limit: 3
    t.string "BPRME", limit: 3
    t.string "PRDAT", limit: 24
    t.integer "BPUMZ", limit: 3
    t.integer "BPUMN", limit: 3
    t.string "WEBRE", limit: 1
    t.decimal "EFFPR", precision: 11, scale: 2
    t.string "EKKOL", limit: 4
    t.string "SKTOF", limit: 1
    t.string "KZABS", limit: 1
    t.string "MWSKZ", limit: 2
    t.string "EBONU", limit: 2
    t.string "BSTAE", limit: 4
    t.string "MEPRF", limit: 1
    t.string "INCO2", limit: 28
    t.string "XERSN", limit: 1
    t.string "EBON2", limit: 2
    t.string "EBONF", limit: 1
    t.decimal "BSTMA", precision: 13, scale: 3
    t.string "SGT_SSREL", limit: 1
    t.string "AUT_SOURCE", limit: 1
  end

  create_table "g_eord", primary_key: ["MATNR", "WERKS", "ZEORD"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.integer "ZEORD", limit: 3, null: false
    t.date "VDATU"
    t.date "ERDAT"
    t.string "LIFNR", limit: 10
    t.date "BDATU"
    t.string "FLIFN", limit: 1
    t.string "EORTP", limit: 1
    t.string "RESWK", limit: 4
    t.string "NOTKZ", limit: 1
    t.string "AUTET", limit: 1
    t.string "MEINS", limit: 3
    t.string "LOGSY", limit: 10
    t.string "EKORG", limit: 4
  end

  create_table "g_inob", primary_key: ["CUOBJ", "OBJEK"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.bigint "CUOBJ", null: false
    t.string "KLART", limit: 3
    t.string "OBTAB", limit: 30
    t.string "OBJEK", limit: 50, null: false
    t.string "ROBTAB", limit: 30
    t.string "ROBJEK", limit: 50
    t.bigint "CLINT"
    t.string "STATU", limit: 1
    t.integer "CUCOZHL", limit: 2
    t.bigint "PARENT"
    t.bigint "ROOT"
    t.string "EXPERTE", limit: 1
    t.string "MATNR", limit: 18
    t.date "DATUV"
    t.string "TECHS", limit: 12
  end

  create_table "g_klah", primary_key: "CLINT", id: :bigint, default: nil, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "KLART", limit: 3
    t.string "CLASS", limit: 18
    t.string "STATU", limit: 1
    t.string "KLAGR", limit: 10
    t.string "BGRSE", limit: 3
    t.string "BGRKL", limit: 3
    t.string "BGRKP", limit: 3
    t.string "ANAME", limit: 12
    t.string "ADATU", limit: 12
    t.string "VNAME", limit: 12
    t.string "VDATU", limit: 12
    t.string "VONDT", limit: 12
    t.string "BISDT", limit: 12
    t.integer "ANZUO", limit: 3
    t.string "PRAUS", limit: 1
    t.string "SICHT", limit: 10
    t.string "DOKNR", limit: 25
    t.string "DOKAR", limit: 3
    t.string "DOKTL", limit: 3
    t.string "DOKVR", limit: 2
    t.string "DINKZ", limit: 1
    t.string "NNORM", limit: 10
    t.string "NORMN", limit: 20
    t.string "NORMB", limit: 70
    t.string "NRMT1", limit: 70
    t.string "NRMT2", limit: 70
    t.string "AUSGD", limit: 12
    t.string "VERSD", limit: 12
    t.integer "VERSI", limit: 2
    t.string "LEIST", limit: 20
    t.string "VERWE", limit: 1
    t.string "SPART", limit: 2
    t.string "LREF3", limit: 3
    t.string "WWSKZ", limit: 1
    t.string "WWSSI", limit: 1
    t.string "POTPR", limit: 1
    t.string "CLOBK", limit: 1
    t.string "CLMUL", limit: 1
    t.string "CVIEW", limit: 10
    t.string "DISST", limit: 3
    t.string "MEINS", limit: 3
    t.string "CLMOD", limit: 1
    t.string "VWSTL", limit: 1
    t.string "VWPLA", limit: 1
    t.string "CLALT", limit: 1
    t.integer "LBREI", limit: 2
    t.string "BNAME", limit: 20
    t.string "MAXBL", limit: 18
    t.bigint "KNOBJ"
    t.string "LOCLA", limit: 1
    t.string "KATALOG", limit: 30
    t.string "KDOKAZ", limit: 1
    t.string "GENRKZ", limit: 1
  end

  create_table "g_makt", primary_key: ["MATNR", "SPRAS"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "SPRAS", limit: 1, null: false
    t.string "MAKTX", limit: 40
    t.string "MAKTG", limit: 40
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
    t.integer "VPREH", limit: 3
    t.decimal "VOLTO", precision: 3, scale: 1
    t.integer "STFAK"
    t.string "SAISO", limit: 4
    t.string "RMATP", limit: 40
    t.string "PRDHA", limit: 18
    t.date "MSTDV"
    t.string "MSTAV", limit: 2
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
    t.string "ZZMODEL", limit: 20
    t.string "ZZ_UN_NUMBER", limit: 4
    t.string "ZZLID", limit: 1
    t.bigint "COLOR_ATINN"
    t.bigint "SIZE1_ATINN"
    t.bigint "SIZE2_ATINN"
    t.string "COLOR", limit: 18
    t.string "SIZE1", limit: 18
    t.string "SIZE2", limit: 18
  end

  create_table "g_marc", primary_key: ["MATNR", "WERKS"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 40, null: false
    t.string "WERKS", limit: 4, null: false
    t.string "BWSCL", limit: 1
    t.string "MMSTA", limit: 2
    t.date "MMSTD"
    t.string "HERKL", limit: 3
    t.string "EKGRP", limit: 3
    t.string "XMCNG", limit: 1
    t.integer "WEBAZ", limit: 2
    t.string "VRBWK", limit: 4
    t.string "VRBMT", limit: 40
    t.decimal "VRBFK", precision: 4, scale: 2
    t.date "VRBDT"
    t.decimal "TRAME", precision: 13, scale: 3
    t.string "STAWN", limit: 17
    t.string "SERNP", limit: 4
    t.string "RDPRF", limit: 4
    t.string "PRCTR", limit: 10
    t.integer "PLIFZ", limit: 2
    t.string "PERKZ", limit: 1
    t.string "MTVFP", limit: 2
    t.string "MRPPP", limit: 3
    t.decimal "MABST", precision: 13, scale: 3
    t.string "MAABC", limit: 1
    t.string "LGFSB", limit: 4
    t.string "LFRHY", limit: 3
    t.string "LADGR", limit: 4
    t.string "KAUTB", limit: 1
    t.integer "GI_PR_TIME", limit: 2
    t.string "FPRFM", limit: 3
    t.string "EXPME", limit: 3
    t.decimal "EISLO", precision: 13, scale: 3
    t.decimal "EISBE", precision: 13, scale: 3
    t.string "DISPR", limit: 4
    t.string "DISPO", limit: 3
    t.string "DISMM", limit: 2
    t.string "BESKZ", limit: 1
    t.string "AUSME", limit: 3
    t.string "ABCIN", limit: 1
    t.string "LVORM", limit: 1
    t.string "HERKR", limit: 3
    t.string "XCHAR", limit: 1
    t.decimal "MINBE", precision: 13, scale: 3
    t.decimal "BSTMI", precision: 13, scale: 3
    t.decimal "BSTMA", precision: 13, scale: 3
    t.decimal "BSTFE", precision: 13, scale: 3
    t.decimal "BSTRF", precision: 13, scale: 3
    t.string "AUTRU", limit: 1
    t.string "MFRGR", limit: 8
    t.string "APOKZ", limit: 1
    t.integer "LFMON", limit: 2
    t.string "SCM_RRP_TYPE", limit: 1
    t.string "ZZLIKE_ITEM", limit: 40
    t.string "ZZPROHIBITED", limit: 1
    t.string "ZZPERMIT_1", limit: 2
    t.string "ZZPERMIT_2", limit: 2
    t.string "ZZPERMIT_3", limit: 2
    t.string "ZZPERMIT_4", limit: 2
    t.string "ZZPERMIT_5", limit: 2
    t.string "ZZPERMIT_6", limit: 2
    t.string "ZZPERMIT_7", limit: 2
    t.string "ZZPERMIT_8", limit: 2
    t.string "ZZPERMIT_9", limit: 2
    t.string "ZZDUTY_DRAW", limit: 1
    t.string "ZZSADC", limit: 1
    t.string "ZZPROHIB_COMMENT", limit: 2
  end

  create_table "g_marm", primary_key: ["MATNR", "MEINH"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "EAN11", limit: 18
    t.string "NUMTP", limit: 2
    t.integer "UMREN", limit: 3
    t.integer "UMREZ", limit: 3
    t.decimal "BRGEW", precision: 13, scale: 3
    t.string "GEWEI", limit: 3
    t.decimal "VOLUM", precision: 18, scale: 3
    t.string "VOLEH", limit: 3
    t.string "MEABM", limit: 3
    t.decimal "LAENG", precision: 13, scale: 3
    t.decimal "BREIT", precision: 13, scale: 3
    t.decimal "HOEHE", precision: 13, scale: 3
    t.string "MESUB", limit: 3
    t.integer "NEST_FTR", limit: 2
    t.integer "MAX_STACK"
    t.decimal "CAPAUSE", precision: 15, scale: 3
  end

  create_table "g_mean", primary_key: ["MATNR", "MEINH", "LFNUM"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "LFNUM", limit: 5, null: false
    t.string "EAN11", limit: 18
    t.string "EANTP", limit: 2
    t.string "HPEAN", limit: 1
  end

  create_table "g_mean_concat", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "HPEAN", limit: 1
    t.string "EANTP", limit: 2
    t.string "LFNUM", limit: 5, null: false
    t.text "BARCODES", size: :medium
    t.index ["MATNR"], name: "idx_gm_matnr"
  end

  create_table "g_mean_flat", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR"
    t.string "EA_EAN11"
    t.string "SW_EAN11"
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

  create_table "g_tskmt", primary_key: ["TATYP", "TAXKM"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TATYP", limit: 4, null: false
    t.string "TAXKM", limit: 1, null: false
    t.string "VTEXT", limit: 20
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

  create_table "g_variant_detail", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TYPE", limit: 10
    t.string "GENERIC_MATNR", limit: 18
    t.integer "VARIANT_NUM"
    t.string "VARIANT_MATNR", limit: 18
    t.string "DECRIPTION", limit: 40
    t.string "KEY_OBJECT_NUM", limit: 18
    t.decimal "COLOUR_INT_CHAR_NUM", precision: 10, scale: 2
    t.string "COLOUR_CHARACTERISTIC_NAME", limit: 30
    t.string "COLOUR", limit: 30
    t.integer "SIZE1_INT_CHAR_NUM"
    t.string "SIZE1_CHARACTERISTIC_NAME", limit: 30
    t.string "SIZE1", limit: 30
    t.integer "SIZE2_INT_CHAR_NUM"
    t.string "SIZE2_CHARACTERISTIC_NAME", limit: 30
    t.string "SIZE2", limit: 30
    t.decimal "CHAR1_INT_CHAR_NUM", precision: 10, scale: 2
    t.string "CHAR1_CHARACTERISTIC_NAME", limit: 30
    t.string "CHAR1_CHARACTERISTIC_VALUE", limit: 30
    t.decimal "CHAR2_INT_CHAR_NUM", precision: 10, scale: 2
    t.string "CHAR2_CHARACTERISTIC_NAME", limit: 30
    t.string "CHAR2_CHARACTERISTIC_VALUE", limit: 30
    t.decimal "CHAR3_INT_CHAR_NUM", precision: 10, scale: 2
    t.string "CHAR3_CHARACTERISTIC_NAME", limit: 30
    t.string "CHAR3_CHARACTERISTIC_VALUE", limit: 30
    t.index ["GENERIC_MATNR"], name: "g_variant_detail_GENERIC_MATNR_IDX"
  end

  create_table "g_wrf_brands", primary_key: "BRAND_ID", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_TYPE", limit: 1
  end

  create_table "g_wrf_brands_t", primary_key: ["BRAND_ID", "LANGUAGE"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_ID", limit: 4, null: false
    t.string "LANGUAGE", limit: 1, null: false
    t.string "BRAND_DESCR", limit: 30
  end

  create_table "lookup_and_operations", id: :integer, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.integer "sort_order", null: false
    t.text "attribute_name", size: :tiny
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
    t.text "display", size: :tiny
    t.text "lov", size: :tiny
    t.text "updatable", size: :tiny
    t.text "override", size: :tiny
    t.index ["id"], name: "lookup_and_operations_id_IDX"
  end

  create_table "m_brands", primary_key: "BRAND_ID", id: { type: :string, limit: 4 }, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_DESCR", limit: 30
  end

  create_table "m_eina", primary_key: ["MATNR", "INFNR"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "INFNR", limit: 10, null: false
    t.string "MATNR", limit: 18, null: false
    t.string "MATKL", limit: 9
    t.string "MEINS", limit: 3
    t.string "VABME", limit: 1
    t.integer "UMREZ", limit: 3
    t.integer "UMREN", limit: 3
    t.string "RUECK", limit: 2
    t.string "RELIF", limit: 1
    t.string "IDNLF", limit: 35
    t.string "LIFNR", limit: 10
    t.string "LOEKZ", limit: 1
    t.string "SORTL", limit: 10
    t.string "TELF1", limit: 16
    t.integer "MAHN1", limit: 2
    t.integer "MAHN2", limit: 2
    t.integer "MAHN3", limit: 2
    t.string "URZLA", limit: 3
    t.string "URZTP", limit: 1
    t.string "REGIO", limit: 3
    t.string "LTSNR", limit: 6
    t.string "WGLIF", limit: 18
    t.date "LIFAB"
    t.date "LIFBI"
  end

  create_table "m_eine", primary_key: ["INFNR", "EKORG", "ESOKZ", "WERKS"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "INFNR", limit: 10, null: false
    t.string "EKORG", limit: 4, null: false
    t.string "ESOKZ", limit: 1, null: false
    t.string "WERKS", limit: 4, null: false
    t.integer "MHDRZ", limit: 2
    t.string "IPRKZ", limit: 1
    t.decimal "NETPR", precision: 11, scale: 2
    t.string "EKGRP", limit: 3
    t.string "RDPRF", limit: 4
    t.integer "APLFZ", limit: 2
    t.date "ANGDT"
    t.date "ERDAT"
    t.string "LOEKZ", limit: 1
    t.string "WAERS", limit: 5
    t.decimal "MINBM", precision: 13, scale: 3
    t.decimal "NORBM", precision: 13, scale: 3
    t.decimal "UEBTO", precision: 3, scale: 1
    t.string "UEBTK", limit: 1
    t.string "ANGNR", limit: 10
    t.string "BSTYP", limit: 1
    t.string "EBELN", limit: 10
    t.integer "EBELP", limit: 3
    t.date "DATLB"
    t.integer "PEINH", limit: 3
    t.string "BPRME", limit: 3
    t.date "PRDAT"
    t.integer "BPUMZ", limit: 3
    t.integer "BPUMN", limit: 3
    t.string "WEBRE", limit: 1
    t.decimal "EFFPR", precision: 11, scale: 2
    t.string "EKKOL", limit: 4
    t.string "SKTOF", limit: 1
    t.string "KZABS", limit: 1
    t.string "MWSKZ", limit: 2
    t.string "EBONU", limit: 2
    t.string "BSTAE", limit: 4
    t.string "MEPRF", limit: 1
    t.string "INCO2", limit: 28
    t.string "XERSN", limit: 1
    t.string "EBON2", limit: 2
    t.string "EBONF", limit: 1
    t.decimal "BSTMA", precision: 13, scale: 3
  end

  create_table "m_eord", primary_key: ["MATNR", "WERKS", "ZEORD"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.integer "ZEORD", limit: 3, null: false
    t.date "VDATU"
    t.date "ERDAT"
    t.string "LIFNR", limit: 10
    t.date "BDATU"
    t.string "FLIFN", limit: 1
    t.string "EORTP", limit: 1
    t.string "RESWK", limit: 4
    t.string "NOTKZ", limit: 1
    t.string "AUTET", limit: 1
    t.string "MEINS", limit: 3
    t.string "LOGSY", limit: 10
  end

  create_table "m_mabw", primary_key: ["MATNR", "ZHLER"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.integer "ZHLER", null: false
    t.string "WERKS", limit: 4
    t.string "LGORT", limit: 4
  end

  create_table "m_makt", primary_key: ["MATNR", "SPRAS"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "SPRAS", limit: 1, null: false
    t.string "MAKTX", limit: 40
    t.string "MAKTG", limit: 40
  end

  create_table "m_mamt", primary_key: ["MATNR", "SPRAS", "MEINH", "MTXID", "LFDNR"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "SPRAS", limit: 1, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "MTXID", limit: 2, null: false
    t.integer "LFDNR", limit: 2, null: false
    t.string "MAKTM", limit: 40
  end

  create_table "m_mapr", primary_key: ["MATNR", "WERKS"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.bigint "PNUM1"
    t.string "PERKZ", limit: 1
    t.string "PERIV", limit: 2
    t.date "DATUM"
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

  create_table "m_mard", primary_key: ["MATNR", "WERKS", "LGORT"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.string "LGORT", limit: 4, null: false
    t.string "LVORM", limit: 1
    t.string "SPERR", limit: 1
    t.integer "LFMON", limit: 2
  end

  create_table "m_marm", primary_key: ["MATNR", "MEINH"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "EAN11", limit: 18
    t.string "NUMTP", limit: 2
    t.integer "UMREN", limit: 3
    t.integer "UMREZ", limit: 3
    t.decimal "BRGEW", precision: 13, scale: 3
    t.string "GEWEI", limit: 3
    t.decimal "VOLUM", precision: 18, scale: 3
    t.string "VOLEH", limit: 3
    t.string "MEABM", limit: 3
    t.decimal "LAENG", precision: 13, scale: 3
    t.decimal "BREIT", precision: 13, scale: 3
    t.decimal "HOEHE", precision: 13, scale: 3
    t.string "MESUB", limit: 3
    t.integer "NEST_FTR", limit: 2
    t.integer "MAX_STACK"
    t.decimal "CAPAUSE", precision: 15, scale: 3
  end

  create_table "m_mast", primary_key: ["MATNR", "WERKS", "STLAN", "STLNR", "STLAL"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.string "STLAN", limit: 1, null: false
    t.string "STLNR", limit: 8, null: false
    t.string "STLAL", limit: 2, null: false
    t.decimal "LOSVN", precision: 13, scale: 3
    t.decimal "LOSBS", precision: 13, scale: 3
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

  create_table "m_mbew", primary_key: ["MATNR", "BWKEY", "BWTAR"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "BWKEY", limit: 4, null: false
    t.string "BWTAR", limit: 10, null: false
    t.string "LVORM", limit: 1
    t.string "BKLAS", limit: 4
    t.bigint "TIMESTAMP"
    t.decimal "LBKUM", precision: 13, scale: 3
    t.decimal "SALK3", precision: 13, scale: 2
    t.string "VPRSV", limit: 1
    t.decimal "VERPR", precision: 11, scale: 2
    t.decimal "STPRS", precision: 11, scale: 2
    t.integer "PEINH", limit: 3
    t.integer "LFMON", limit: 2
    t.decimal "STPRV", precision: 11, scale: 2
    t.date "LAEPR"
    t.string "MLMAA", limit: 1
    t.decimal "VKSAL", precision: 13, scale: 2
    t.bigint "KALN1"
    t.bigint "KALNR"
  end

  create_table "m_mean", primary_key: ["MATNR", "MEINH", "LFNUM"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "LFNUM", limit: 5, null: false
    t.string "EAN11", limit: 18
    t.string "EANTP", limit: 2
    t.string "HPEAN", limit: 1
  end

  create_table "m_mean_concat", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "HPEAN", limit: 1
    t.string "EANTP", limit: 2
    t.string "LFNUM", limit: 5, null: false
    t.text "BARCODES", size: :medium
    t.index ["MATNR"], name: "idx_me_matnr"
  end

  create_table "m_mean_flat", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR"
    t.string "EA_EAN11"
    t.string "CS_EAN11"
    t.string "PK_EAN11"
    t.string "SW_EAN11"
    t.string "BOX_EAN11"
  end

  create_table "m_mlan", primary_key: ["MATNR", "ALAND"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "ALAND", limit: 3, null: false
    t.string "TAXIM", limit: 1
    t.string "TAXM1", limit: 1
  end

  create_table "m_mlea", primary_key: ["MATNR", "MEINH", "LIFNR", "LFNUM"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "LIFNR", limit: 10, null: false
    t.string "LFNUM", limit: 5, null: false
    t.string "EAN11", limit: 18
    t.string "LFEAN", limit: 1
    t.string "LARTN", limit: 35
    t.string "GTIN_VARIANT", limit: 2
  end

  create_table "m_mvke", primary_key: ["MATNR", "VKORG", "VTWEG"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "VKORG", limit: 4, null: false
    t.string "VTWEG", limit: 2, null: false
    t.string "PLGTP", limit: 2
    t.string "PMATN", limit: 18
    t.string "MTPOS", limit: 4
    t.string "VRKME", limit: 3
    t.string "PRODH", limit: 18
    t.string "LVORM", limit: 1
    t.date "LDVFL"
    t.date "LDVZL"
    t.string "LSTFL", limit: 2
    t.string "LSTVZ", limit: 2
    t.string "SSTUF", limit: 2
    t.date "VDBFL"
    t.date "VDBZL"
    t.date "VDVFL"
    t.date "VDVZL"
    t.string "SKTOF", limit: 1
    t.string "KTGRM", limit: 2
    t.string "VAVME", limit: 1
  end

  create_table "m_stko", primary_key: ["STLTY", "STLNR", "STLAL", "STKOZ"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "STLTY", limit: 1, null: false
    t.string "STLNR", limit: 8, null: false
    t.string "STLAL", limit: 2, null: false
    t.integer "STKOZ", null: false
    t.string "BMEIN", limit: 3
    t.decimal "BMENG", precision: 13, scale: 3
    t.string "STKTX", limit: 40
    t.integer "STLST", limit: 2
    t.string "GUIDX", limit: 32
  end

  create_table "m_stpo", primary_key: ["STLTY", "STLNR", "STLKN", "STPOZ"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "STLTY", limit: 1, null: false
    t.string "STLNR", limit: 8, null: false
    t.integer "STLKN", null: false
    t.integer "STPOZ", null: false
    t.string "IDNRK", limit: 18
    t.decimal "MENGE", precision: 13, scale: 3
    t.string "POSTP", limit: 1
    t.string "POSNR", limit: 4
    t.string "SORTF", limit: 10
    t.string "MEINS", limit: 3
    t.string "FMENG", limit: 1
    t.decimal "AUSCH", precision: 5, scale: 2
    t.string "RVREL", limit: 1
    t.string "SANFE", limit: 1
    t.string "SANKA", limit: 1
    t.string "REKRS", limit: 1
    t.string "OBJTY", limit: 1
    t.string "LGORT", limit: 4
    t.string "ALEKZ", limit: 1
    t.string "GUIDX", limit: 32
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

  create_table "m_tskmt", primary_key: ["TATYP", "TAXKM"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TATYP", limit: 4, null: false
    t.string "TAXKM", limit: 1, null: false
    t.string "VTEXT", limit: 20
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

  create_table "m_variant_detail", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TYPE", limit: 10
    t.string "GENERIC_MATNR", limit: 18
    t.integer "VARIANT_NUM"
    t.string "VARIANT_MATNR", limit: 18
    t.string "DECRIPTION", limit: 40
    t.string "KEY_OBJECT_NUM", limit: 18
    t.decimal "COLOUR_INT_CHAR_NUM", precision: 10, scale: 2
    t.string "COLOUR_CHARACTERISTIC_NAME", limit: 30
    t.string "COLOUR", limit: 30
    t.integer "SIZE1_INT_CHAR_NUM"
    t.string "SIZE1_CHARACTERISTIC_NAME", limit: 30
    t.string "SIZE1", limit: 30
    t.integer "SIZE2_INT_CHAR_NUM"
    t.string "SIZE2_CHARACTERISTIC_NAME", limit: 30
    t.string "SIZE2", limit: 30
    t.decimal "CHAR1_INT_CHAR_NUM", precision: 10, scale: 2
    t.string "CHAR1_CHARACTERISTIC_NAME", limit: 30
    t.string "CHAR1_CHARACTERISTIC_VALUE", limit: 30
    t.decimal "CHAR2_INT_CHAR_NUM", precision: 10, scale: 2
    t.string "CHAR2_CHARACTERISTIC_NAME", limit: 30
    t.string "CHAR2_CHARACTERISTIC_VALUE", limit: 30
    t.decimal "CHAR3_INT_CHAR_NUM", precision: 10, scale: 2
    t.string "CHAR3_CHARACTERISTIC_NAME", limit: 30
    t.string "CHAR3_CHARACTERISTIC_VALUE", limit: 30
    t.index ["GENERIC_MATNR"], name: "m_variant_detail_GENERIC_MATNR_IDX"
  end

  create_table "m_wlk2", primary_key: ["MATNR", "VKORG", "VTWEG", "WERKS"], charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "VKORG", limit: 4, null: false
    t.string "VTWEG", limit: 2, null: false
    t.string "WERKS", limit: 4, null: false
    t.date "DATAE"
    t.string "AENAM", limit: 12
    t.string "KWDHT", limit: 1
    t.string "PRERF", limit: 1
    t.date "VKDAB"
    t.date "VKBIS"
    t.string "MSTAV", limit: 2
    t.date "MSTDV"
    t.string "RBZUL", limit: 1
    t.string "SCAGR", limit: 4
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
    t.text "MANDT", size: :tiny, null: false
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
    t.string "ZFABW28", limit: 1255
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
    t.index ["MATNR"], name: "m_zmk_adv_article_MATNR_IDX", length: 255
  end

  create_table "match_fields", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.integer "match_id"
    t.integer "lookup_id"
    t.string "mara_id"
    t.string "overridden_value"
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
    t.text "group", size: :tiny
    t.index ["active", "matched", "article_type"], name: "matchtable_articles_active_IDX"
  end

  create_table "matched_articles", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.integer "match_id"
    t.string "prefixed_matnr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  add_foreign_key "motor_alert_locks", "motor_alerts", column: "alert_id"
  add_foreign_key "motor_alerts", "motor_queries", column: "query_id"
  add_foreign_key "motor_taggable_tags", "motor_tags", column: "tag_id"
end
