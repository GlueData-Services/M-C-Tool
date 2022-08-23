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

ActiveRecord::Schema[7.0].define(version: 2022_07_18_180527) do
  create_table "articles", charset: "utf8mb4", force: :cascade do |t|
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

  create_table "b_ausp", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MANDT", limit: 3
    t.string "OBJEK", limit: 50
    t.bigint "ATINN"
    t.integer "ATZHL", limit: 2
    t.string "MAFID", limit: 1
    t.string "KLART", limit: 3
    t.integer "ADZHL", limit: 2
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

  create_table "b_cabn", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MANDT", limit: 3
    t.bigint "ATINN"
    t.integer "ADZHL", limit: 2
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

  create_table "b_cawn", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MANDT", limit: 3
    t.bigint "ATINN"
    t.integer "ATZHL", limit: 2
    t.integer "ADZHL", limit: 2
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

  create_table "b_eina", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "INFNR", limit: 10, null: false
    t.string "MATNR", limit: 18
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

  create_table "b_eine", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "b_eord", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "b_inob", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MANDT", limit: 3
    t.bigint "CUOBJ"
    t.string "KLART", limit: 3
    t.string "OBTAB", limit: 30
    t.string "OBJEK", limit: 50
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

  create_table "b_klah", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MANDT", limit: 3
    t.bigint "CLINT"
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

  create_table "b_ksml", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MANDT", limit: 3, null: false
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

  create_table "b_kssk", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MANDT", limit: 3
    t.string "OBJEK", limit: 50
    t.string "MAFID", limit: 1
    t.string "KLART", limit: 3
    t.bigint "CLINT"
    t.integer "ADZHL", limit: 2
    t.integer "ZAEHL"
    t.string "STATU", limit: 1
    t.string "STDCL", limit: 1
    t.string "REKRI", limit: 1
    t.string "AENNR", limit: 12
    t.string "DATUV", limit: 12
    t.string "LKENZ", limit: 1
    t.string "DATUB", limit: 12
  end

  create_table "b_mabw", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "b_makt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18
    t.string "SPRAS", limit: 1
    t.string "MAKTX", limit: 40
    t.string "MAKTG", limit: 40
  end

  create_table "b_mamt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "SPRAS", limit: 1, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "MTXID", limit: 2, null: false
    t.integer "LFDNR", limit: 2, null: false
    t.string "MAKTM", limit: 40
  end

  create_table "b_mapr", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.bigint "PNUM1"
    t.string "PERKZ", limit: 1
    t.string "PERIV", limit: 2
    t.date "DATUM"
  end

  create_table "b_mara", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MTART", limit: 4
    t.string "MATKL", limit: 9
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
    t.string "MEABM", limit: 3
    t.decimal "LAENG", precision: 13, scale: 3
    t.decimal "BREIT", precision: 13, scale: 3
    t.decimal "HOEHE", precision: 13, scale: 3
    t.string "VABME", limit: 1
    t.string "VHART", limit: 4
    t.string "MAGRV", limit: 4
    t.date "DATAB"
    t.date "LIQDT"
    t.string "SAISJ", limit: 4
    t.string "PLGTP", limit: 2
    t.string "SATNR", limit: 18
    t.string "ATTYP", limit: 2
    t.string "PMATA", limit: 18
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
    t.string "RMATP", limit: 18
    t.string "PRDHA", limit: 18
    t.date "MSTDV"
    t.string "MSTAV", limit: 2
    t.decimal "MAXL", precision: 15, scale: 3
    t.decimal "MAXH", precision: 15, scale: 3
    t.decimal "MAXB", precision: 15, scale: 3
    t.string "LVORM", limit: 1
    t.decimal "INHBR", precision: 13, scale: 3
    t.decimal "GEWTO", precision: 3, scale: 1
    t.integer "FUELG", limit: 2
    t.decimal "ERGEW", precision: 13, scale: 3
    t.string "ERGEI", limit: 3
    t.string "ADPROF", limit: 3
    t.string "BISMT", limit: 18
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
    t.index ["MATNR"], name: "idx_bm_matnr"
  end

  create_table "b_marc", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "b_mard", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.string "LGORT", limit: 4, null: false
    t.string "LVORM", limit: 1
    t.string "SPERR", limit: 1
    t.integer "LFMON", limit: 2
  end

  create_table "b_marm", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "b_mast", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.string "STLAN", limit: 1, null: false
    t.string "STLNR", limit: 8, null: false
    t.string "STLAL", limit: 2, null: false
    t.decimal "LOSVN", precision: 13, scale: 3
    t.decimal "LOSBS", precision: 13, scale: 3
  end

  create_table "b_maw1", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
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

  create_table "b_mbew", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "b_mean", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "b_mean_flat", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR"
    t.string "EA_EAN11"
    t.string "CS_EAN11"
    t.string "LAY_EAN11"
    t.string "PAK_EAN11"
    t.string "PAL_EAN11"
  end

  create_table "b_mlan", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18
    t.string "ALAND", limit: 3
    t.string "TAXIM", limit: 1
    t.string "TAXM1", limit: 1
  end

  create_table "b_mlea", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "LIFNR", limit: 10, null: false
    t.string "LFNUM", limit: 5, null: false
    t.string "EAN11", limit: 18
    t.string "LFEAN", limit: 1
    t.string "LARTN", limit: 35
    t.string "GTIN_VARIANT", limit: 2
  end

  create_table "b_mvke", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "b_stko", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "b_stpo", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "b_swor", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MANDT", limit: 3, null: false
    t.bigint "CLINT", null: false
    t.string "SPRAS", limit: 1, null: false
    t.integer "KLPOS", limit: 2, null: false
    t.string "KSCHL", limit: 40
    t.string "KSCHG", limit: 40
  end

  create_table "b_t001w", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "WERKS", limit: 4, null: false
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
    t.string "MANDT", limit: 3
    t.string "SPRAS", limit: 1
    t.string "MATKL", limit: 9
    t.string "WGBEZ", limit: 20
    t.string "WGBEZ60", limit: 60
  end

  create_table "b_wlk1", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "b_wlk2", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "b_wrf_brands", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_ID", limit: 4, null: false
    t.string "BRAND_TYPE", limit: 1
  end

  create_table "b_wrf_brands_t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_ID", limit: 4, null: false
    t.string "LANGUAGE", limit: 1, null: false
    t.string "BRAND_DESCR", limit: 30
  end

  create_table "b_wrst", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "SPRAS", limit: 1, null: false
    t.string "ASORT", limit: 10, null: false
    t.string "NAME1", limit: 40
  end

  create_table "b_wrsz", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "g_eina", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "INFNR", limit: 10, null: false
    t.string "MATNR", limit: 18
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

  create_table "g_eine", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "g_eord", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "g_inob", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MANDT", limit: 3
    t.bigint "CUOBJ"
    t.string "KLART", limit: 3
    t.string "OBTAB", limit: 30
    t.string "OBJEK", limit: 50
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

  create_table "g_klah", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MANDT", limit: 3
    t.bigint "CLINT"
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

  create_table "g_makt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18
    t.string "SPRAS", limit: 1
    t.string "MAKTX", limit: 40
    t.string "MAKTG", limit: 40
  end

  create_table "g_mara", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 40, null: false
    t.string "MTART", limit: 4
    t.string "MATKL", limit: 9
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
    t.string "MEABM", limit: 3
    t.decimal "LAENG", precision: 13, scale: 3
    t.decimal "BREIT", precision: 13, scale: 3
    t.decimal "HOEHE", precision: 13, scale: 3
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
    t.decimal "MAXL", precision: 15, scale: 3
    t.decimal "MAXH", precision: 15, scale: 3
    t.decimal "MAXB", precision: 15, scale: 3
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
    t.index ["MATNR"], name: "idx_g_matnr"
  end

  create_table "g_marc", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "g_mean", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "g_t001w", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "WERKS", limit: 4, null: false
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
    t.string "MANDT", limit: 3
    t.string "SPRAS", limit: 1
    t.string "MATKL", limit: 9
    t.string "WGBEZ", limit: 20
    t.string "WGBEZ60", limit: 60
  end

  create_table "g_t134t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTART", limit: 4, null: false
    t.string "MTBEZ", limit: 25
  end

  create_table "g_t142t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "RAUBE", limit: 2, null: false
    t.string "RBTXT", limit: 20
  end

  create_table "g_t143t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TEMPB", limit: 2, null: false
    t.string "TBTXT", limit: 60
  end

  create_table "g_t179t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "PRODH", limit: 18, null: false
    t.string "VTEXT", limit: 40
  end

  create_table "g_tskmt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TATYP", limit: 4, null: false
    t.string "TAXKM", limit: 1, null: false
    t.string "VTEXT", limit: 20
  end

  create_table "g_tspat", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "SPART", limit: 2, null: false
    t.string "VTEXT", limit: 20
  end

  create_table "g_ttgrt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TRAGR", limit: 4, null: false
    t.string "VTEXT", limit: 20
  end

  create_table "g_tvegrt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MAGRV", limit: 4, null: false
    t.string "BEZEI", limit: 20
  end

  create_table "g_tvtyt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TRATY", limit: 4, null: false
    t.string "VTEXT", limit: 20
  end

  create_table "g_twhmatgrt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "WHMATGR", limit: 4, null: false
    t.string "TEXT", limit: 40
  end

  create_table "g_twptt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "PLGTP", limit: 2, null: false
    t.string "VTEXT", limit: 20
  end

  create_table "lookup_and_operations", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "Attribute_Name", size: :tiny
    t.text "Tab", size: :tiny
    t.text "Detail", size: :tiny
    t.text "G_TABLE", size: :tiny
    t.text "G_FIELD", size: :tiny
    t.text "M_TABLE", size: :tiny
    t.text "M_FIELD", size: :tiny
    t.text "B_TABLE", size: :tiny
    t.text "B_FIELD", size: :tiny
    t.text "Consolidatable", size: :tiny
    t.text "Rule", size: :tiny
    t.text "Display", size: :tiny
    t.text "LOV", size: :tiny
    t.text "Update", size: :tiny
    t.text "Note", size: :tiny
  end

  create_table "m_eina", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "INFNR", limit: 10, null: false
    t.string "MATNR", limit: 18
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

  create_table "m_eine", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "m_eord", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "m_mabw", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.integer "ZHLER", null: false
    t.string "WERKS", limit: 4
    t.string "LGORT", limit: 4
  end

  create_table "m_makt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18
    t.string "SPRAS", limit: 1
    t.string "MAKTX", limit: 40
    t.string "MAKTG", limit: 40
  end

  create_table "m_mamt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "SPRAS", limit: 1, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "MTXID", limit: 2, null: false
    t.integer "LFDNR", limit: 2, null: false
    t.string "MAKTM", limit: 40
  end

  create_table "m_mapr", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.bigint "PNUM1"
    t.string "PERKZ", limit: 1
    t.string "PERIV", limit: 2
    t.date "DATUM"
  end

  create_table "m_mara", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MTART", limit: 4
    t.string "MATKL", limit: 9
    t.string "BISMT", limit: 18
    t.string "MEINS", limit: 3
    t.string "BSTME", limit: 3
    t.decimal "BRGEW", precision: 13, scale: 3
    t.decimal "NTGEW", precision: 13, scale: 3
    t.decimal "ZPACKGW", precision: 13, scale: 3
    t.string "GEWEI", limit: 3
    t.decimal "VOLUM", precision: 13, scale: 3
    t.string "VOLEH"
    t.string "ZPACKUNIT", limit: 3
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
    t.decimal "ZPACKLGHT", precision: 13, scale: 3
    t.decimal "ZPACKWGHT", precision: 13, scale: 3
    t.decimal "ZPACKHGTH", precision: 13, scale: 3
    t.string "MEABM", limit: 3
    t.decimal "LAENG", precision: 13, scale: 3
    t.decimal "BREIT", precision: 13, scale: 3
    t.decimal "HOEHE", precision: 13, scale: 3
    t.string "VABME", limit: 1
    t.string "VHART", limit: 4
    t.string "MAGRV", limit: 4
    t.date "DATAB"
    t.date "LIQDT"
    t.string "SAISJ", limit: 4
    t.string "PLGTP", limit: 2
    t.string "SATNR", limit: 18
    t.string "ATTYP", limit: 2
    t.string "PMATA", limit: 18
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
    t.string "RMATP", limit: 18
    t.string "PRDHA", limit: 18
    t.date "MSTDV"
    t.string "MSTAV", limit: 2
    t.decimal "MAXL", precision: 15, scale: 3
    t.decimal "MAXH", precision: 15, scale: 3
    t.decimal "MAXB", precision: 15, scale: 3
    t.string "LVORM", limit: 1
    t.decimal "INHBR", precision: 13, scale: 3
    t.decimal "GEWTO", precision: 3, scale: 1
    t.integer "FUELG", limit: 2
    t.decimal "ERGEW", precision: 13, scale: 3
    t.string "ERGEI", limit: 3
    t.string "ADPROF", limit: 3
    t.string "ZPACKTYPE", limit: 2
    t.integer "ZPACKCMP", limit: 2
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
    t.index ["MATNR"], name: "idx_mm_matnr"
  end

  create_table "m_mard", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.string "LGORT", limit: 4, null: false
    t.string "LVORM", limit: 1
    t.string "SPERR", limit: 1
    t.integer "LFMON", limit: 2
  end

  create_table "m_marm", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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
  end

  create_table "m_mast", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "WERKS", limit: 4, null: false
    t.string "STLAN", limit: 1, null: false
    t.string "STLNR", limit: 8, null: false
    t.string "STLAL", limit: 2, null: false
    t.decimal "LOSVN", precision: 13, scale: 3
    t.decimal "LOSBS", precision: 13, scale: 3
  end

  create_table "m_maw1", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
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

  create_table "m_mbew", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "m_mean", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "m_mlan", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18
    t.string "ALAND", limit: 3
    t.string "TAXIM", limit: 1
    t.string "TAXM1", limit: 1
  end

  create_table "m_mlea", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18, null: false
    t.string "MEINH", limit: 3, null: false
    t.string "LIFNR", limit: 10, null: false
    t.string "LFNUM", limit: 5, null: false
    t.string "EAN11", limit: 18
    t.string "LFEAN", limit: 1
    t.string "LARTN", limit: 35
    t.string "GTIN_VARIANT", limit: 2
  end

  create_table "m_mvke", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MATNR", limit: 18
    t.string "VKORG", limit: 4
    t.string "VTWEG", limit: 2
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

  create_table "m_stko", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "m_stpo", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "m_t134t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTART", limit: 4, null: false
    t.string "MTBEZ", limit: 25
  end

  create_table "m_t142t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "RAUBE", limit: 2, null: false
    t.string "RBTXT", limit: 20
  end

  create_table "m_t143t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TEMPB", limit: 2, null: false
    t.string "TBTXT", limit: 60
  end

  create_table "m_t179t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "PRODH", limit: 18, null: false
    t.string "VTEXT", limit: 40
  end

  create_table "m_tmbwt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BWSCL", limit: 1, null: false
    t.string "BWSCB", limit: 40
  end

  create_table "m_tptmt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTPOS", limit: 4, null: false
    t.string "BEZEI", limit: 20
  end

  create_table "m_tskmt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TATYP", limit: 4, null: false
    t.string "TAXKM", limit: 1, null: false
    t.string "VTEXT", limit: 20
  end

  create_table "m_tspat", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "SPART", limit: 2, null: false
    t.string "VTEXT", limit: 20
  end

  create_table "m_tvegrt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MAGRV", limit: 4, null: false
    t.string "BEZEI", limit: 20
  end

  create_table "m_tvtyt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TRATY", limit: 4, null: false
    t.string "VTEXT", limit: 20
  end

  create_table "m_twhmatgrt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "WHMATGR", limit: 4, null: false
    t.string "TEXT", limit: 40
  end

  create_table "m_twptt", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "PLGTP", limit: 2, null: false
    t.string "VTEXT", limit: 20
  end

  create_table "m_wlk2", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "m_wrf_brands", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_ID", limit: 4, null: false
    t.string "BRAND_TYPE", limit: 1
  end

  create_table "m_wrf_brands_t", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BRAND_ID", limit: 4, null: false
    t.string "LANGUAGE", limit: 1, null: false
    t.string "BRAND_DESCR", limit: 30
  end

  create_table "m_wrs1", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "ASORT", limit: 10, null: false
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

  create_table "m_wrs6", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "ASORT", limit: 10
    t.string "MATKL", limit: 9
    t.string "SSTUF", limit: 2
    t.string "PRIOT", limit: 1
  end

  create_table "m_wrst", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "SPRAS", limit: 1, null: false
    t.string "ASORT", limit: 10, null: false
    t.string "NAME1", limit: 40
  end

  create_table "m_wrsz", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
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

  create_table "matchable_articles", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.string "banner"
    t.string "type"
    t.string "article_type"
    t.string "material_num"
    t.string "prefix_material_num"
    t.string "article_desc"
    t.string "brand_desc"
    t.integer "number_variants"
    t.bigint "barcodes"
    t.string "vendors"
    t.string "matched"
    t.string "active"
  end

  create_table "matched_articles", charset: "utf8mb4", force: :cascade do |t|
    t.integer "match_id"
    t.string "prefixed_matnr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", charset: "utf8mb4", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "motor_alert_locks", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "alert_id", null: false
    t.string "lock_timestamp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alert_id", "lock_timestamp"], name: "index_motor_alert_locks_on_alert_id_and_lock_timestamp", unique: true
    t.index ["alert_id"], name: "index_motor_alert_locks_on_alert_id"
  end

  create_table "motor_alerts", charset: "utf8mb4", force: :cascade do |t|
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

  create_table "motor_api_configs", charset: "utf8mb4", force: :cascade do |t|
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

  create_table "motor_audits", charset: "utf8mb4", force: :cascade do |t|
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

  create_table "motor_configs", charset: "utf8mb4", force: :cascade do |t|
    t.string "key", null: false
    t.text "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_motor_configs_on_key", unique: true
    t.index ["updated_at"], name: "index_motor_configs_on_updated_at"
  end

  create_table "motor_dashboards", charset: "utf8mb4", force: :cascade do |t|
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

  create_table "motor_forms", charset: "utf8mb4", force: :cascade do |t|
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

  create_table "motor_queries", charset: "utf8mb4", force: :cascade do |t|
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

  create_table "motor_resources", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.text "preferences", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_motor_resources_on_name", unique: true
    t.index ["updated_at"], name: "index_motor_resources_on_updated_at"
  end

  create_table "motor_taggable_tags", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "tag_id", null: false
    t.bigint "taggable_id", null: false
    t.string "taggable_type", null: false
    t.index ["tag_id"], name: "index_motor_taggable_tags_on_tag_id"
    t.index ["taggable_id", "taggable_type", "tag_id"], name: "motor_polymorphic_association_tag_index", unique: true
  end

  create_table "motor_tags", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "motor_tags_name_unique_index", unique: true
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
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
