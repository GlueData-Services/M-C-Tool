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
  create_table "B_T134T", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTART", limit: 50
    t.string "MTBEZ", limit: 50
  end

  create_table "B_T142T", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.integer "RAUBE"
    t.string "RBTXT", limit: 50
  end

  create_table "B_T143T", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.integer "TEMPB"
    t.string "TBTXT", limit: 50
  end

  create_table "B_TMBWT", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "BWSCL", limit: 50
    t.string "BWSCB", limit: 50
  end

  create_table "B_TPTMT", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MTPOS", limit: 50
    t.string "BEZEI", limit: 50
  end

  create_table "B_TSKMT", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TATYP", limit: 50
    t.string "TAXKM", limit: 50
    t.string "VTEXT", limit: 50
  end

  create_table "B_TSPAT", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "SPART", limit: 50
    t.string "VTEXT", limit: 50
  end

  create_table "B_TTGRT", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.integer "TRAGR"
    t.string "VTEXT", limit: 50
  end

  create_table "B_TVEGRT", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "MAGRV", limit: 50
    t.string "BEZEI", limit: 50
  end

  create_table "B_TVTYT", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "TRATY", limit: 50
    t.string "VTEXT", limit: 50
  end

  create_table "B_TWHMATGRT", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.integer "WHMATGR"
    t.string "TEXT", limit: 50
  end

  create_table "B_TWPTT", id: false, charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "PLGTP", limit: 50
    t.string "VTEXT", limit: 50
  end

  create_table "EINA_B", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "INFNR", size: :tiny
    t.text "MATNR", size: :tiny
    t.text "MATKL", size: :tiny
    t.text "LIFNR", size: :tiny
    t.text "LOEKZ", size: :tiny
    t.datetime "ERDAT", precision: nil
    t.text "ERNAM", size: :tiny
    t.text "TXZ01", size: :tiny
    t.text "SORTL", size: :tiny
    t.text "MEINS", size: :tiny
    t.float "UMREZ", limit: 53
    t.float "UMREN", limit: 53
    t.text "IDNLF", size: :tiny
    t.text "VERKF", size: :tiny
    t.text "TELF1", size: :tiny
    t.float "MAHN1", limit: 53
    t.float "MAHN2", limit: 53
    t.float "MAHN3", limit: 53
    t.text "URZNR", size: :tiny
    t.text "URZDT", size: :tiny
    t.text "URZLA", size: :tiny
    t.text "URZTP", size: :tiny
    t.text "URZZT", size: :tiny
    t.text "LMEIN", size: :tiny
    t.text "REGIO", size: :tiny
    t.text "VABME", size: :tiny
    t.text "LTSNR", size: :tiny
    t.text "LTSSF", size: :tiny
    t.text "WGLIF", size: :tiny
    t.text "RUECK", size: :tiny
    t.text "LIFAB", size: :tiny
    t.text "LIFBI", size: :tiny
    t.text "KOLIF", size: :tiny
    t.float "ANZPU", limit: 53
    t.text "PUNEI", size: :tiny
    t.text "RELIF", size: :tiny
    t.text "MFRNR", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "EINA_G", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "INFNR", size: :tiny
    t.text "MATNR", size: :tiny
    t.text "MATKL", size: :tiny
    t.text "LIFNR", size: :tiny
    t.text "LOEKZ", size: :tiny
    t.datetime "ERDAT", precision: nil
    t.text "ERNAM", size: :tiny
    t.text "TXZ01", size: :tiny
    t.text "SORTL", size: :tiny
    t.text "MEINS", size: :tiny
    t.float "UMREZ", limit: 53
    t.float "UMREN", limit: 53
    t.text "IDNLF", size: :tiny
    t.text "VERKF", size: :tiny
    t.text "TELF1", size: :tiny
    t.float "MAHN1", limit: 53
    t.float "MAHN2", limit: 53
    t.float "MAHN3", limit: 53
    t.text "URZNR", size: :tiny
    t.text "URZDT", size: :tiny
    t.text "URZLA", size: :tiny
    t.text "URZTP", size: :tiny
    t.text "URZZT", size: :tiny
    t.text "LMEIN", size: :tiny
    t.text "REGIO", size: :tiny
    t.text "VABME", size: :tiny
    t.text "LTSNR", size: :tiny
    t.text "LTSSF", size: :tiny
    t.text "WGLIF", size: :tiny
    t.text "RUECK", size: :tiny
    t.text "LIFAB", size: :tiny
    t.text "LIFBI", size: :tiny
    t.text "KOLIF", size: :tiny
    t.float "ANZPU", limit: 53
    t.text "PUNEI", size: :tiny
    t.text "RELIF", size: :tiny
    t.text "MFRNR", size: :tiny
    t.text "DUMMY_EINA_INCL_EEW_PS", size: :tiny
    t.datetime "LASTCHANGEDATETIME", precision: nil
    t.text "ISEOPBLOCKED", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "EINA_GD_NEW", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.string "MANDT", limit: 18
    t.string "INFNR", limit: 25
    t.string "MATNR", limit: 33
    t.string "MATKL", limit: 24
    t.string "LIFNR", limit: 25
    t.string "LOEKZ", limit: 16
    t.string "ERDAT", limit: 10
    t.string "ERNAM", limit: 27
    t.string "TXZ01", limit: 55
    t.string "SORTL", limit: 25
    t.string "MEINS", limit: 18
    t.float "UMREZ", limit: 53
    t.float "UMREN", limit: 53
    t.string "IDNLF", limit: 50
    t.string "VERKF", limit: 45
    t.string "TELF1", limit: 31
    t.float "MAHN1", limit: 53
    t.float "MAHN2", limit: 53
    t.float "MAHN3", limit: 53
    t.string "URZNR", limit: 25
    t.string "URZDT", limit: 10
    t.string "URZLA", limit: 18
    t.string "URZTP", limit: 16
    t.string "URZZT", limit: 31
    t.string "LMEIN", limit: 18
    t.string "REGIO", limit: 18
    t.string "VABME", limit: 16
    t.string "LTSNR", limit: 21
    t.integer "LTSSF"
    t.string "WGLIF", limit: 33
    t.string "RUECK", limit: 17
    t.string "LIFAB", limit: 10
    t.string "LIFBI", limit: 10
    t.string "KOLIF", limit: 25
    t.decimal "ANZPU", precision: 16, scale: 2
    t.string "PUNEI", limit: 18
    t.string "RELIF", limit: 16
    t.string "MFRNR", limit: 25
    t.date "load_date"
    t.string "source", limit: 2
  end

  create_table "EINA_M", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
    t.text "INFNR", size: :tiny
    t.text "MATKL", size: :tiny
    t.text "LIFNR", size: :tiny
    t.text "LOEKZ", size: :tiny
    t.datetime "ERDAT", precision: nil
    t.text "ERNAM", size: :tiny
    t.text "TXZ01", size: :tiny
    t.text "SORTL", size: :tiny
    t.text "MEINS", size: :tiny
    t.float "UMREZ", limit: 53
    t.float "UMREN", limit: 53
    t.text "IDNLF", size: :tiny
    t.text "VERKF", size: :tiny
    t.text "TELF1", size: :tiny
    t.float "MAHN1", limit: 53
    t.float "MAHN2", limit: 53
    t.float "MAHN3", limit: 53
    t.text "URZNR", size: :tiny
    t.text "URZDT", size: :tiny
    t.text "URZLA", size: :tiny
    t.text "URZTP", size: :tiny
    t.text "URZZT", size: :tiny
    t.text "LMEIN", size: :tiny
    t.text "REGIO", size: :tiny
    t.text "VABME", size: :tiny
    t.text "LTSNR", size: :tiny
    t.text "LTSSF", size: :tiny
    t.text "WGLIF", size: :tiny
    t.text "RUECK", size: :tiny
    t.text "LIFAB", size: :tiny
    t.text "LIFBI", size: :tiny
    t.text "KOLIF", size: :tiny
    t.float "ANZPU", limit: 53
    t.text "PUNEI", size: :tiny
    t.text "RELIF", size: :tiny
    t.text "MFRNR", size: :tiny
  end

  create_table "LOOKUP_AND_OPERATIONS", id: false, charset: "utf8mb4", force: :cascade do |t|
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

  create_table "MAKT_B", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "SPRAS", size: :tiny
    t.text "MAKTX", size: :tiny
    t.text "MAKTG", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MAKT_G", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "SPRAS", size: :tiny
    t.text "MAKTX", size: :tiny
    t.text "MAKTG", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MAKT_GD_NEW", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.string "MANDT", limit: 18
    t.string "MATNR", limit: 33
    t.string "SPRAS", limit: 16
    t.string "MAKTX", limit: 55
    t.string "MAKTG", limit: 55
    t.string "ZLTXT", limit: 215
    t.date "load_date"
    t.string "source", limit: 2
  end

  create_table "MAKT_M", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "SPRAS", size: :tiny
    t.text "MAKTX", size: :tiny
    t.text "MAKTG", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MAMT_B", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "SPRAS", size: :tiny
    t.text "MEINH", size: :tiny
    t.text "MTXID", size: :tiny
    t.text "LFDNR", size: :tiny
    t.text "MAKTM", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MAMT_G", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "SPRAS", size: :tiny
    t.text "MEINH", size: :tiny
    t.text "MTXID", size: :tiny
    t.text "LFDNR", size: :tiny
    t.text "MAKTM", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MAMT_GD_NEW", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.string "MANDT", limit: 18
    t.string "MATNR", limit: 33
    t.string "SPRAS", limit: 16
    t.string "MEINH", limit: 18
    t.string "MTXID", limit: 17
    t.integer "LFDNR"
    t.string "MAKTM", limit: 55
    t.date "load_date"
    t.string "source", limit: 2
  end

  create_table "MAMT_M", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "SPRAS", size: :tiny
    t.text "MEINH", size: :tiny
    t.text "MTXID", size: :tiny
    t.text "LFDNR", size: :tiny
    t.text "MAKTM", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MARA_B", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.datetime "ERSDA", precision: nil
    t.text "ERNAM", size: :tiny
    t.datetime "LAEDA", precision: nil
    t.text "AENAM", size: :tiny
    t.text "VPSTA", size: :tiny
    t.text "PSTAT", size: :tiny
    t.text "LVORM", size: :tiny
    t.text "MTART", size: :tiny
    t.text "MBRSH", size: :tiny
    t.text "MATKL", size: :tiny
    t.text "BISMT", size: :tiny
    t.text "MEINS", size: :tiny
    t.text "BSTME", size: :tiny
    t.text "ZEINR", size: :tiny
    t.text "ZEIAR", size: :tiny
    t.text "ZEIVR", size: :tiny
    t.text "ZEIFO", size: :tiny
    t.text "AESZN", size: :tiny
    t.text "BLATT", size: :tiny
    t.text "BLANZ", size: :tiny
    t.text "FERTH", size: :tiny
    t.text "FORMT", size: :tiny
    t.text "GROES", size: :tiny
    t.text "WRKST", size: :tiny
    t.text "NORMT", size: :tiny
    t.text "LABOR", size: :tiny
    t.text "EKWSL", size: :tiny
    t.float "BRGEW", limit: 53
    t.float "NTGEW", limit: 53
    t.text "GEWEI", size: :tiny
    t.float "VOLUM", limit: 53
    t.text "VOLEH", size: :tiny
    t.text "BEHVO", size: :tiny
    t.text "RAUBE", size: :tiny
    t.text "TEMPB", size: :tiny
    t.text "DISST", size: :tiny
    t.text "TRAGR", size: :tiny
    t.text "STOFF", size: :tiny
    t.text "SPART", size: :tiny
    t.text "KUNNR", size: :tiny
    t.text "EANNR", size: :tiny
    t.float "WESCH", limit: 53
    t.text "BWVOR", size: :tiny
    t.text "BWSCL", size: :tiny
    t.text "SAISO", size: :tiny
    t.text "ETIAR", size: :tiny
    t.text "ETIFO", size: :tiny
    t.text "ENTAR", size: :tiny
    t.text "EAN11", size: :tiny
    t.text "NUMTP", size: :tiny
    t.float "LAENG", limit: 53
    t.float "BREIT", limit: 53
    t.float "HOEHE", limit: 53
    t.text "MEABM", size: :tiny
    t.text "PRDHA", size: :tiny
    t.text "AEKLK", size: :tiny
    t.text "CADKZ", size: :tiny
    t.text "QMPUR", size: :tiny
    t.float "ERGEW", limit: 53
    t.text "ERGEI", size: :tiny
    t.float "ERVOL", limit: 53
    t.text "ERVOE", size: :tiny
    t.float "GEWTO", limit: 53
    t.float "VOLTO", limit: 53
    t.text "VABME", size: :tiny
    t.text "KZREV", size: :tiny
    t.text "KZKFG", size: :tiny
    t.text "XCHPF", size: :tiny
    t.text "VHART", size: :tiny
    t.float "FUELG", limit: 53
    t.float "STFAK", limit: 53
    t.text "MAGRV", size: :tiny
    t.text "BEGRU", size: :tiny
    t.datetime "DATAB", precision: nil
    t.datetime "LIQDT", precision: nil
    t.text "SAISJ", size: :tiny
    t.text "PLGTP", size: :tiny
    t.text "MLGUT", size: :tiny
    t.text "EXTWG", size: :tiny
    t.text "SATNR", size: :tiny
    t.text "ATTYP", size: :tiny
    t.text "KZKUP", size: :tiny
    t.text "KZNFM", size: :tiny
    t.text "PMATA", size: :tiny
    t.text "MSTAE", size: :tiny
    t.text "MSTAV", size: :tiny
    t.text "MSTDE", size: :tiny
    t.text "MSTDV", size: :tiny
    t.text "TAKLV", size: :tiny
    t.text "RBNRM", size: :tiny
    t.float "MHDRZ", limit: 53
    t.float "MHDHB", limit: 53
    t.float "MHDLP", limit: 53
    t.text "INHME", size: :tiny
    t.float "INHAL", limit: 53
    t.float "VPREH", limit: 53
    t.text "ETIAG", size: :tiny
    t.float "INHBR", limit: 53
    t.text "CMETH", size: :tiny
    t.text "CUOBF", size: :tiny
    t.text "KZUMW", size: :tiny
    t.text "KOSCH", size: :tiny
    t.text "SPROF", size: :tiny
    t.text "NRFHG", size: :tiny
    t.text "MFRPN", size: :tiny
    t.text "MFRNR", size: :tiny
    t.text "BMATN", size: :tiny
    t.text "MPROF", size: :tiny
    t.text "KZWSM", size: :tiny
    t.text "SAITY", size: :tiny
    t.text "PROFL", size: :tiny
    t.text "IHIVI", size: :tiny
    t.text "ILOOS", size: :tiny
    t.text "SERLV", size: :tiny
    t.text "KZGVH", size: :tiny
    t.text "XGCHP", size: :tiny
    t.text "KZEFF", size: :tiny
    t.text "COMPL", size: :tiny
    t.text "IPRKZ", size: :tiny
    t.text "RDMHD", size: :tiny
    t.text "PRZUS", size: :tiny
    t.text "MTPOS_MARA", size: :tiny
    t.text "BFLME", size: :tiny
    t.text "MATFI", size: :tiny
    t.text "CMREL", size: :tiny
    t.text "BBTYP", size: :tiny
    t.text "SLED_BBD", size: :tiny
    t.text "GTIN_VARIANT", size: :tiny
    t.text "GENNR", size: :tiny
    t.text "RMATP", size: :tiny
    t.text "GDS_RELEVANT", size: :tiny
    t.text "WEORA", size: :tiny
    t.text "HUTYP_DFLT", size: :tiny
    t.text "PILFERABLE", size: :tiny
    t.text "WHSTC", size: :tiny
    t.text "WHMATGR", size: :tiny
    t.text "HNDLCODE", size: :tiny
    t.text "HAZMAT", size: :tiny
    t.text "HUTYP", size: :tiny
    t.text "TARE_VAR", size: :tiny
    t.float "MAXC", limit: 53
    t.float "MAXC_TOL", limit: 53
    t.float "MAXL", limit: 53
    t.float "MAXB", limit: 53
    t.float "MAXH", limit: 53
    t.text "MAXDIM_UOM", size: :tiny
    t.text "HERKL", size: :tiny
    t.text "MFRGR", size: :tiny
    t.float "QQTIME", limit: 53
    t.text "QQTIMEUOM", size: :tiny
    t.text "QGRP", size: :tiny
    t.text "SERIAL", size: :tiny
    t.text "PS_SMARTFORM", size: :tiny
    t.text "PACKCODE", size: :tiny
    t.text "DG_PACK_STATUS", size: :tiny
    t.text "MCOND", size: :tiny
    t.text "RETDELC", size: :tiny
    t.text "LOGLEV_RETO", size: :tiny
    t.text "NSNID", size: :tiny
    t.text "IMATN", size: :tiny
    t.text "PICNUM", size: :tiny
    t.text "BSTAT", size: :tiny
    t.text "COLOR_ATINN", size: :tiny
    t.text "SIZE1_ATINN", size: :tiny
    t.text "SIZE2_ATINN", size: :tiny
    t.text "COLOR", size: :tiny
    t.text "SIZE1", size: :tiny
    t.text "SIZE2", size: :tiny
    t.text "FREE_CHAR", size: :tiny
    t.text "CARE_CODE", size: :tiny
    t.text "BRAND_ID", size: :tiny
    t.text "FIBER_CODE1", size: :tiny
    t.text "FIBER_PART1", size: :tiny
    t.text "FIBER_CODE2", size: :tiny
    t.text "FIBER_PART2", size: :tiny
    t.text "FIBER_CODE3", size: :tiny
    t.text "FIBER_PART3", size: :tiny
    t.text "FIBER_CODE4", size: :tiny
    t.text "FIBER_PART4", size: :tiny
    t.text "FIBER_CODE5", size: :tiny
    t.text "FIBER_PART5", size: :tiny
    t.text "FASHGRD", size: :tiny
    t.text "ZZECOW", size: :tiny
    t.text "ZZSEQ", size: :tiny
    t.text "ZZCOMP", size: :tiny
    t.text "ZZUNTIE", size: :tiny
    t.text "ZZPRDTYP", size: :tiny
    t.text "ZZBTYPE", size: :tiny
    t.text "ZZBCODE", size: :tiny
    t.text "ZZBNAME", size: :tiny
    t.text "ZZLINKART", size: :tiny
    t.text "ZZHPLUG", size: :tiny
    t.text "ZZTRTYP", size: :tiny
    t.text "ZZQUOTR", size: :tiny
    t.text "ZZSADC", size: :tiny
    t.text "MAKTX", size: :tiny
    t.text "MAKTG", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MARA_G", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.datetime "ERSDA", precision: nil
    t.text "ERNAM", size: :tiny
    t.datetime "LAEDA", precision: nil
    t.text "AENAM", size: :tiny
    t.text "VPSTA", size: :tiny
    t.text "PSTAT", size: :tiny
    t.text "LVORM", size: :tiny
    t.text "MTART", size: :tiny
    t.text "MBRSH", size: :tiny
    t.text "MATKL", size: :tiny
    t.text "BISMT", size: :tiny
    t.text "MEINS", size: :tiny
    t.text "BSTME", size: :tiny
    t.text "ZEINR", size: :tiny
    t.text "ZEIAR", size: :tiny
    t.text "ZEIVR", size: :tiny
    t.text "ZEIFO", size: :tiny
    t.text "AESZN", size: :tiny
    t.text "BLATT", size: :tiny
    t.text "BLANZ", size: :tiny
    t.text "FERTH", size: :tiny
    t.text "FORMT", size: :tiny
    t.text "GROES", size: :tiny
    t.text "WRKST", size: :tiny
    t.text "NORMT", size: :tiny
    t.text "LABOR", size: :tiny
    t.text "EKWSL", size: :tiny
    t.float "BRGEW", limit: 53
    t.float "NTGEW", limit: 53
    t.text "GEWEI", size: :tiny
    t.float "VOLUM", limit: 53
    t.text "VOLEH", size: :tiny
    t.text "BEHVO", size: :tiny
    t.text "RAUBE", size: :tiny
    t.text "TEMPB", size: :tiny
    t.text "DISST", size: :tiny
    t.text "TRAGR", size: :tiny
    t.text "STOFF", size: :tiny
    t.text "SPART", size: :tiny
    t.text "KUNNR", size: :tiny
    t.text "EANNR", size: :tiny
    t.float "WESCH", limit: 53
    t.text "BWVOR", size: :tiny
    t.text "BWSCL", size: :tiny
    t.text "SAISO", size: :tiny
    t.text "ETIAR", size: :tiny
    t.text "ETIFO", size: :tiny
    t.text "ENTAR", size: :tiny
    t.text "EAN11", size: :tiny
    t.text "NUMTP", size: :tiny
    t.float "LAENG", limit: 53
    t.float "BREIT", limit: 53
    t.float "HOEHE", limit: 53
    t.text "MEABM", size: :tiny
    t.text "PRDHA", size: :tiny
    t.text "AEKLK", size: :tiny
    t.text "CADKZ", size: :tiny
    t.text "QMPUR", size: :tiny
    t.float "ERGEW", limit: 53
    t.text "ERGEI", size: :tiny
    t.float "ERVOL", limit: 53
    t.text "ERVOE", size: :tiny
    t.float "GEWTO", limit: 53
    t.float "VOLTO", limit: 53
    t.text "VABME", size: :tiny
    t.text "KZREV", size: :tiny
    t.text "KZKFG", size: :tiny
    t.text "XCHPF", size: :tiny
    t.text "VHART", size: :tiny
    t.float "FUELG", limit: 53
    t.float "STFAK", limit: 53
    t.text "MAGRV", size: :tiny
    t.text "BEGRU", size: :tiny
    t.datetime "DATAB", precision: nil
    t.datetime "LIQDT", precision: nil
    t.text "SAISJ", size: :tiny
    t.text "PLGTP", size: :tiny
    t.text "MLGUT", size: :tiny
    t.text "EXTWG", size: :tiny
    t.text "SATNR", size: :tiny
    t.text "ATTYP", size: :tiny
    t.text "KZKUP", size: :tiny
    t.text "KZNFM", size: :tiny
    t.text "PMATA", size: :tiny
    t.text "MSTAE", size: :tiny
    t.text "MSTAV", size: :tiny
    t.text "MSTDE", size: :tiny
    t.text "MSTDV", size: :tiny
    t.text "TAKLV", size: :tiny
    t.text "RBNRM", size: :tiny
    t.float "MHDRZ", limit: 53
    t.float "MHDHB", limit: 53
    t.float "MHDLP", limit: 53
    t.text "INHME", size: :tiny
    t.float "INHAL", limit: 53
    t.float "VPREH", limit: 53
    t.text "ETIAG", size: :tiny
    t.float "INHBR", limit: 53
    t.text "CMETH", size: :tiny
    t.text "CUOBF", size: :tiny
    t.text "KZUMW", size: :tiny
    t.text "KOSCH", size: :tiny
    t.text "SPROF", size: :tiny
    t.text "NRFHG", size: :tiny
    t.text "MFRPN", size: :tiny
    t.text "MFRNR", size: :tiny
    t.text "BMATN", size: :tiny
    t.text "MPROF", size: :tiny
    t.text "KZWSM", size: :tiny
    t.text "SAITY", size: :tiny
    t.text "PROFL", size: :tiny
    t.text "IHIVI", size: :tiny
    t.text "ILOOS", size: :tiny
    t.text "SERLV", size: :tiny
    t.text "KZGVH", size: :tiny
    t.text "XGCHP", size: :tiny
    t.text "KZEFF", size: :tiny
    t.text "COMPL", size: :tiny
    t.text "IPRKZ", size: :tiny
    t.text "RDMHD", size: :tiny
    t.text "PRZUS", size: :tiny
    t.text "MTPOS_MARA", size: :tiny
    t.text "BFLME", size: :tiny
    t.text "MATFI", size: :tiny
    t.text "CMREL", size: :tiny
    t.text "BBTYP", size: :tiny
    t.text "SLED_BBD", size: :tiny
    t.text "GTIN_VARIANT", size: :tiny
    t.text "GENNR", size: :tiny
    t.text "RMATP", size: :tiny
    t.text "GDS_RELEVANT", size: :tiny
    t.text "WEORA", size: :tiny
    t.text "HUTYP_DFLT", size: :tiny
    t.text "PILFERABLE", size: :tiny
    t.text "WHSTC", size: :tiny
    t.text "WHMATGR", size: :tiny
    t.text "HNDLCODE", size: :tiny
    t.text "HAZMAT", size: :tiny
    t.text "HUTYP", size: :tiny
    t.text "TARE_VAR", size: :tiny
    t.float "MAXC", limit: 53
    t.float "MAXC_TOL", limit: 53
    t.float "MAXL", limit: 53
    t.float "MAXB", limit: 53
    t.float "MAXH", limit: 53
    t.text "MAXDIM_UOM", size: :tiny
    t.text "HERKL", size: :tiny
    t.text "MFRGR", size: :tiny
    t.float "QQTIME", limit: 53
    t.text "QQTIMEUOM", size: :tiny
    t.text "QGRP", size: :tiny
    t.text "SERIAL", size: :tiny
    t.text "PS_SMARTFORM", size: :tiny
    t.text "LOGUNIT", size: :tiny
    t.text "CWQREL", size: :tiny
    t.text "CWQPROC", size: :tiny
    t.text "CWQTOLGR", size: :tiny
    t.text "ADPROF", size: :tiny
    t.text "IPMIPPRODUCT", size: :tiny
    t.text "ALLOW_PMAT_IGNO", size: :tiny
    t.text "MEDIUM", size: :tiny
    t.text "COMMODITY", size: :tiny
    t.text "ANIMAL_ORIGIN", size: :tiny
    t.text "TEXTILE_COMP_IND", size: :tiny
    t.datetime "LAST_CHANGED_TIME", precision: nil
    t.text "MATNR_EXTERNAL", size: :tiny
    t.text "LOGISTICAL_MAT_CATEGORY", size: :tiny
    t.text "SALES_MATERIAL", size: :tiny
    t.text "IDENTIFICATION_TAG_TYPE", size: :tiny
    t.text "SGT_CSGR", size: :tiny
    t.text "SGT_COVSA", size: :tiny
    t.text "SGT_STAT", size: :tiny
    t.text "SGT_SCOPE", size: :tiny
    t.text "SGT_REL", size: :tiny
    t.text "ANP", size: :tiny
    t.text "PSM_CODE", size: :tiny
    t.text "FSH_MG_AT1", size: :tiny
    t.text "FSH_MG_AT2", size: :tiny
    t.text "FSH_MG_AT3", size: :tiny
    t.text "FSH_SEALV", size: :tiny
    t.text "FSH_SEAIM", size: :tiny
    t.text "FSH_SC_MID", size: :tiny
    t.text "DUMMY_PRD_INCL_EEW_PS", size: :tiny
    t.text "SCM_MATID_GUID16", size: :tiny
    t.text "SCM_MATID_GUID22", size: :tiny
    t.text "SCM_MATURITY_DUR", size: :tiny
    t.text "SCM_SHLF_LFE_REQ_MIN", size: :tiny
    t.text "ZZ_UN_NUMBER", size: :tiny
    t.text "ZZCPA_INFO_1", size: :tiny
    t.text "ZZCPA_INFO_2", size: :tiny
    t.text "ZZCPA_INFO_3", size: :tiny
    t.text "ZZCPA_INFO_4", size: :tiny
    t.text "ZZCPA_INFO_5", size: :tiny
    t.text "ZZCPA_INFO_6", size: :tiny
    t.text "ZZCPA_INFO_7", size: :tiny
    t.text "Material description", size: :tiny
    t.text "Material description_1", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MARA_GD_NEW", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.string "MANDT", limit: 18
    t.string "MATNR", limit: 33
    t.string "ERSDA", limit: 10
    t.string "ERNAM", limit: 27
    t.string "LAEDA", limit: 10
    t.string "AENAM", limit: 27
    t.string "VPSTA", limit: 30
    t.string "PSTAT", limit: 30
    t.string "LVORM", limit: 16
    t.string "MTART", limit: 19
    t.string "MBRSH", limit: 16
    t.string "MATKL", limit: 24
    t.string "BISMT", limit: 33
    t.string "MEINS", limit: 18
    t.string "BSTME", limit: 18
    t.string "ZEINR", limit: 37
    t.string "ZEIAR", limit: 18
    t.string "ZEIVR", limit: 17
    t.string "ZEIFO", limit: 19
    t.string "AESZN", limit: 21
    t.string "BLATT", limit: 18
    t.integer "BLANZ"
    t.string "FERTH", limit: 33
    t.string "FORMT", limit: 19
    t.string "GROES", limit: 47
    t.string "WRKST", limit: 63
    t.string "NORMT", limit: 33
    t.string "LABOR", limit: 18
    t.string "EKWSL", limit: 19
    t.decimal "BRGEW", precision: 16, scale: 2
    t.decimal "NTGEW", precision: 16, scale: 2
    t.string "GEWEI", limit: 18
    t.decimal "VOLUM", precision: 16, scale: 2
    t.string "VOLEH", limit: 18
    t.string "BEHVO", limit: 17
    t.string "RAUBE", limit: 17
    t.string "TEMPB", limit: 17
    t.string "DISST", limit: 18
    t.string "TRAGR", limit: 19
    t.string "STOFF", limit: 33
    t.string "SPART", limit: 17
    t.string "KUNNR", limit: 25
    t.string "EANNR", limit: 28
    t.decimal "WESCH", precision: 16, scale: 2
    t.string "BWVOR", limit: 16
    t.string "BWSCL", limit: 16
    t.string "SAISO", limit: 19
    t.string "ETIAR", limit: 17
    t.string "ETIFO", limit: 17
    t.string "ENTAR", limit: 16
    t.string "EAN11", limit: 33
    t.string "NUMTP", limit: 17
    t.decimal "LAENG", precision: 16, scale: 2
    t.decimal "BREIT", precision: 16, scale: 2
    t.decimal "HOEHE", precision: 16, scale: 2
    t.string "MEABM", limit: 18
    t.string "PRDHA", limit: 33
    t.string "AEKLK", limit: 16
    t.string "CADKZ", limit: 16
    t.string "QMPUR", limit: 16
    t.decimal "ERGEW", precision: 16, scale: 2
    t.string "ERGEI", limit: 18
    t.decimal "ERVOL", precision: 16, scale: 2
    t.string "ERVOE", limit: 18
    t.float "GEWTO", limit: 53
    t.float "VOLTO", limit: 53
    t.string "VABME", limit: 16
    t.string "KZREV", limit: 16
    t.string "KZKFG", limit: 16
    t.string "XCHPF", limit: 16
    t.string "VHART", limit: 19
    t.float "FUELG", limit: 53
    t.integer "ADSPC_SPC"
    t.string "IMATN", limit: 33
    t.string "PICNUM", limit: 33
    t.string "BSTAT", limit: 17
    t.bigint "COLOR_ATINN"
    t.bigint "SIZE1_ATINN"
    t.bigint "SIZE2_ATINN"
    t.string "COLOR", limit: 33
    t.string "SIZE1", limit: 33
    t.string "SIZE2", limit: 33
    t.string "FREE_CHAR", limit: 33
    t.string "CARE_CODE", limit: 31
    t.string "BRAND_ID", limit: 19
    t.string "FIBER_CODE1", limit: 18
    t.integer "FIBER_PART1"
    t.string "FIBER_CODE2", limit: 18
    t.integer "FIBER_PART2"
    t.string "FIBER_CODE3", limit: 18
    t.integer "FIBER_PART3"
    t.string "FIBER_CODE4", limit: 18
    t.integer "FIBER_PART4"
    t.string "FIBER_CODE5", limit: 18
    t.integer "FIBER_PART5"
    t.string "FASHGRD", limit: 19
    t.integer "COBJID"
    t.string "COTYPE", limit: 17
    t.string "OIGROUPNAM", limit: 23
    t.string "OITRIND", limit: 16
    t.string "OIHMTXGR", limit: 19
    t.string "CUSTOM_FIELD", limit: 65
    t.string "load_date", limit: 10
    t.string "source"
  end

  create_table "MARA_M", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.datetime "ERSDA", precision: nil
    t.text "ERNAM", size: :tiny
    t.datetime "LAEDA", precision: nil
    t.text "AENAM", size: :tiny
    t.text "VPSTA", size: :tiny
    t.text "PSTAT", size: :tiny
    t.text "LVORM", size: :tiny
    t.text "MTART", size: :tiny
    t.text "MBRSH", size: :tiny
    t.text "MATKL", size: :tiny
    t.text "BISMT", size: :tiny
    t.text "MEINS", size: :tiny
    t.text "BSTME", size: :tiny
    t.text "ZEINR", size: :tiny
    t.text "ZEIAR", size: :tiny
    t.text "ZEIVR", size: :tiny
    t.text "ZEIFO", size: :tiny
    t.text "AESZN", size: :tiny
    t.text "BLATT", size: :tiny
    t.text "BLANZ", size: :tiny
    t.text "FERTH", size: :tiny
    t.text "FORMT", size: :tiny
    t.text "GROES", size: :tiny
    t.text "WRKST", size: :tiny
    t.text "NORMT", size: :tiny
    t.text "LABOR", size: :tiny
    t.text "EKWSL", size: :tiny
    t.float "BRGEW", limit: 53
    t.float "NTGEW", limit: 53
    t.text "GEWEI", size: :tiny
    t.float "VOLUM", limit: 53
    t.text "VOLEH", size: :tiny
    t.text "BEHVO", size: :tiny
    t.text "RAUBE", size: :tiny
    t.text "TEMPB", size: :tiny
    t.text "DISST", size: :tiny
    t.text "TRAGR", size: :tiny
    t.text "STOFF", size: :tiny
    t.text "SPART", size: :tiny
    t.text "KUNNR", size: :tiny
    t.text "EANNR", size: :tiny
    t.float "WESCH", limit: 53
    t.text "BWVOR", size: :tiny
    t.text "BWSCL", size: :tiny
    t.text "SAISO", size: :tiny
    t.text "ETIAR", size: :tiny
    t.text "ETIFO", size: :tiny
    t.text "ENTAR", size: :tiny
    t.text "EAN11", size: :tiny
    t.text "NUMTP", size: :tiny
    t.float "LAENG", limit: 53
    t.float "BREIT", limit: 53
    t.float "HOEHE", limit: 53
    t.text "MEABM", size: :tiny
    t.text "PRDHA", size: :tiny
    t.text "AEKLK", size: :tiny
    t.text "CADKZ", size: :tiny
    t.text "QMPUR", size: :tiny
    t.float "ERGEW", limit: 53
    t.text "ERGEI", size: :tiny
    t.float "ERVOL", limit: 53
    t.text "ERVOE", size: :tiny
    t.float "GEWTO", limit: 53
    t.float "VOLTO", limit: 53
    t.text "VABME", size: :tiny
    t.text "KZREV", size: :tiny
    t.text "KZKFG", size: :tiny
    t.text "XCHPF", size: :tiny
    t.text "VHART", size: :tiny
    t.float "FUELG", limit: 53
    t.float "STFAK", limit: 53
    t.text "MAGRV", size: :tiny
    t.text "BEGRU", size: :tiny
    t.datetime "DATAB", precision: nil
    t.datetime "LIQDT", precision: nil
    t.text "SAISJ", size: :tiny
    t.text "PLGTP", size: :tiny
    t.text "MLGUT", size: :tiny
    t.text "EXTWG", size: :tiny
    t.text "SATNR", size: :tiny
    t.text "ATTYP", size: :tiny
    t.text "KZKUP", size: :tiny
    t.text "KZNFM", size: :tiny
    t.text "PMATA", size: :tiny
    t.text "MSTAE", size: :tiny
    t.text "MSTAV", size: :tiny
    t.text "MSTDE", size: :tiny
    t.text "MSTDV", size: :tiny
    t.text "TAKLV", size: :tiny
    t.text "RBNRM", size: :tiny
    t.float "MHDRZ", limit: 53
    t.float "MHDHB", limit: 53
    t.float "MHDLP", limit: 53
    t.text "INHME", size: :tiny
    t.float "INHAL", limit: 53
    t.float "VPREH", limit: 53
    t.text "ETIAG", size: :tiny
    t.float "INHBR", limit: 53
    t.text "CMETH", size: :tiny
    t.text "CUOBF", size: :tiny
    t.text "KZUMW", size: :tiny
    t.text "KOSCH", size: :tiny
    t.text "SPROF", size: :tiny
    t.text "NRFHG", size: :tiny
    t.text "MFRPN", size: :tiny
    t.text "MFRNR", size: :tiny
    t.text "BMATN", size: :tiny
    t.text "MPROF", size: :tiny
    t.text "KZWSM", size: :tiny
    t.text "SAITY", size: :tiny
    t.text "PROFL", size: :tiny
    t.text "IHIVI", size: :tiny
    t.text "ILOOS", size: :tiny
    t.text "SERLV", size: :tiny
    t.text "KZGVH", size: :tiny
    t.text "XGCHP", size: :tiny
    t.text "KZEFF", size: :tiny
    t.text "COMPL", size: :tiny
    t.text "IPRKZ", size: :tiny
    t.text "RDMHD", size: :tiny
    t.text "PRZUS", size: :tiny
    t.text "MTPOS_MARA", size: :tiny
    t.text "BFLME", size: :tiny
    t.text "MATFI", size: :tiny
    t.text "CMREL", size: :tiny
    t.text "BBTYP", size: :tiny
    t.text "SLED_BBD", size: :tiny
    t.text "GTIN_VARIANT", size: :tiny
    t.text "GENNR", size: :tiny
    t.text "RMATP", size: :tiny
    t.text "GDS_RELEVANT", size: :tiny
    t.text "WEORA", size: :tiny
    t.text "HUTYP_DFLT", size: :tiny
    t.text "PILFERABLE", size: :tiny
    t.text "WHSTC", size: :tiny
    t.text "WHMATGR", size: :tiny
    t.text "HNDLCODE", size: :tiny
    t.text "HAZMAT", size: :tiny
    t.text "HUTYP", size: :tiny
    t.text "TARE_VAR", size: :tiny
    t.float "MAXC", limit: 53
    t.float "MAXC_TOL", limit: 53
    t.float "MAXL", limit: 53
    t.float "MAXB", limit: 53
    t.float "MAXH", limit: 53
    t.text "MAXDIM_UOM", size: :tiny
    t.text "HERKL", size: :tiny
    t.text "MFRGR", size: :tiny
    t.float "QQTIME", limit: 53
    t.text "QQTIMEUOM", size: :tiny
    t.text "QGRP", size: :tiny
    t.text "SERIAL", size: :tiny
    t.text "PS_SMARTFORM", size: :tiny
    t.text "LOGUNIT", size: :tiny
    t.text "CWQREL", size: :tiny
    t.text "CWQPROC", size: :tiny
    t.text "CWQTOLGR", size: :tiny
    t.text "ADPROF", size: :tiny
    t.text "IPMIPPRODUCT", size: :tiny
    t.text "ALLOW_PMAT_IGNO", size: :tiny
    t.text "MEDIUM", size: :tiny
    t.text "COMMODITY", size: :tiny
    t.text "ANIMAL_ORIGIN", size: :tiny
    t.text "TEXTILE_COMP_IND", size: :tiny
    t.text "SGT_CSGR", size: :tiny
    t.text "SGT_COVSA", size: :tiny
    t.text "SGT_STAT", size: :tiny
    t.text "SGT_SCOPE", size: :tiny
    t.text "SGT_REL", size: :tiny
    t.text "ANP", size: :tiny
    t.text "FSH_MG_AT1", size: :tiny
    t.text "FSH_MG_AT2", size: :tiny
    t.text "FSH_MG_AT3", size: :tiny
    t.text "FSH_SEALV", size: :tiny
    t.text "FSH_SEAIM", size: :tiny
    t.text "FSH_SC_MID", size: :tiny
    t.text "PSM_CODE", size: :tiny
    t.float "ZPACKHGTH", limit: 53
    t.text "ZPACKUNIT", size: :tiny
    t.float "ZPACKGW", limit: 53
    t.text "ZPACKCMP", size: :tiny
    t.text "ZZBDESC", size: :tiny
    t.text "ZTVLIC", size: :tiny
    t.text "ZSERVV", size: :tiny
    t.text "ZZMRP_REL_IND", size: :tiny
    t.text "ZZSLAUGHTER_HSE_IND", size: :tiny
    t.text "ZZWINE", size: :tiny
    t.text "ZZTRTYP", size: :tiny
    t.text "ZLIMLST", size: :tiny
    t.text "ZPRCLST", size: :tiny
    t.text "ZSHIP", size: :tiny
    t.text "ZDLVTYP", size: :tiny
    t.text "ZDLV", size: :tiny
    t.text "ZCOLL", size: :tiny
    t.text "ZLOCK", size: :tiny
    t.text "MAKTX", size: :tiny
    t.text "MAKTG", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MARC_B", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "WERKS", size: :tiny
    t.text "PSTAT", size: :tiny
    t.text "LVORM", size: :tiny
    t.text "BWTTY", size: :tiny
    t.text "XCHAR", size: :tiny
    t.text "MMSTA", size: :tiny
    t.text "MMSTD", size: :tiny
    t.text "MAABC", size: :tiny
    t.text "KZKRI", size: :tiny
    t.text "EKGRP", size: :tiny
    t.text "AUSME", size: :tiny
    t.text "DISPR", size: :tiny
    t.text "DISMM", size: :tiny
    t.text "DISPO", size: :tiny
    t.text "KZDIE", size: :tiny
    t.float "PLIFZ", limit: 53
    t.float "WEBAZ", limit: 53
    t.text "PERKZ", size: :tiny
    t.float "AUSSS", limit: 53
    t.text "DISLS", size: :tiny
    t.text "BESKZ", size: :tiny
    t.text "SOBSL", size: :tiny
    t.float "MINBE", limit: 53
    t.float "EISBE", limit: 53
    t.float "BSTMI", limit: 53
    t.float "BSTMA", limit: 53
    t.float "BSTFE", limit: 53
    t.float "BSTRF", limit: 53
    t.float "MABST", limit: 53
    t.float "LOSFX", limit: 53
    t.text "SBDKZ", size: :tiny
    t.text "LAGPR", size: :tiny
    t.text "ALTSL", size: :tiny
    t.text "KZAUS", size: :tiny
    t.text "AUSDT", size: :tiny
    t.text "NFMAT", size: :tiny
    t.text "KZBED", size: :tiny
    t.text "MISKZ", size: :tiny
    t.text "FHORI", size: :tiny
    t.text "PFREI", size: :tiny
    t.text "FFREI", size: :tiny
    t.text "RGEKZ", size: :tiny
    t.text "FEVOR", size: :tiny
    t.float "BEARZ", limit: 53
    t.float "RUEZT", limit: 53
    t.float "TRANZ", limit: 53
    t.float "BASMG", limit: 53
    t.float "DZEIT", limit: 53
    t.float "MAXLZ", limit: 53
    t.text "LZEIH", size: :tiny
    t.text "KZPRO", size: :tiny
    t.text "GPMKZ", size: :tiny
    t.float "UEETO", limit: 53
    t.text "UEETK", size: :tiny
    t.float "UNETO", limit: 53
    t.float "WZEIT", limit: 53
    t.text "ATPKZ", size: :tiny
    t.float "VZUSL", limit: 53
    t.text "HERBL", size: :tiny
    t.text "INSMK", size: :tiny
    t.float "SPROZ", limit: 53
    t.float "QUAZT", limit: 53
    t.text "SSQSS", size: :tiny
    t.float "MPDAU", limit: 53
    t.text "KZPPV", size: :tiny
    t.text "KZDKZ", size: :tiny
    t.float "WSTGH", limit: 53
    t.float "PRFRQ", limit: 53
    t.text "NKMPR", size: :tiny
    t.float "UMLMC", limit: 53
    t.text "LADGR", size: :tiny
    t.text "XCHPF", size: :tiny
    t.text "USEQU", size: :tiny
    t.float "LGRAD", limit: 53
    t.text "AUFTL", size: :tiny
    t.text "PLVAR", size: :tiny
    t.text "OTYPE", size: :tiny
    t.text "OBJID", size: :tiny
    t.text "MTVFP", size: :tiny
    t.text "PERIV", size: :tiny
    t.text "KZKFK", size: :tiny
    t.float "VRVEZ", limit: 53
    t.float "VBAMG", limit: 53
    t.float "VBEAZ", limit: 53
    t.text "LIZYK", size: :tiny
    t.text "BWSCL", size: :tiny
    t.text "KAUTB", size: :tiny
    t.text "KORDB", size: :tiny
    t.text "STAWN", size: :tiny
    t.text "HERKL", size: :tiny
    t.text "HERKR", size: :tiny
    t.text "EXPME", size: :tiny
    t.text "MTVER", size: :tiny
    t.text "PRCTR", size: :tiny
    t.float "TRAME", limit: 53
    t.text "MRPPP", size: :tiny
    t.text "SAUFT", size: :tiny
    t.text "FXHOR", size: :tiny
    t.text "VRMOD", size: :tiny
    t.text "VINT1", size: :tiny
    t.text "VINT2", size: :tiny
    t.text "VERKZ", size: :tiny
    t.text "STLAL", size: :tiny
    t.text "STLAN", size: :tiny
    t.text "PLNNR", size: :tiny
    t.text "APLAL", size: :tiny
    t.float "LOSGR", limit: 53
    t.text "SOBSK", size: :tiny
    t.text "FRTME", size: :tiny
    t.text "LGPRO", size: :tiny
    t.text "DISGR", size: :tiny
    t.float "KAUSF", limit: 53
    t.text "QZGTP", size: :tiny
    t.text "QMATV", size: :tiny
    t.float "TAKZT", limit: 53
    t.text "RWPRO", size: :tiny
    t.text "COPAM", size: :tiny
    t.text "ABCIN", size: :tiny
    t.text "AWSLS", size: :tiny
    t.text "SERNP", size: :tiny
    t.text "CUOBJ", size: :tiny
    t.text "STDPD", size: :tiny
    t.text "SFEPR", size: :tiny
    t.text "XMCNG", size: :tiny
    t.text "QSSYS", size: :tiny
    t.text "LFRHY", size: :tiny
    t.text "RDPRF", size: :tiny
    t.text "VRBMT", size: :tiny
    t.text "VRBWK", size: :tiny
    t.text "VRBDT", size: :tiny
    t.float "VRBFK", limit: 53
    t.text "AUTRU", size: :tiny
    t.text "PREFE", size: :tiny
    t.text "PRENC", size: :tiny
    t.text "PRENO", size: :tiny
    t.text "PREND", size: :tiny
    t.text "PRENE", size: :tiny
    t.text "PRENG", size: :tiny
    t.text "ITARK", size: :tiny
    t.text "SERVG", size: :tiny
    t.text "KZKUP", size: :tiny
    t.text "STRGR", size: :tiny
    t.text "CUOBV", size: :tiny
    t.text "LGFSB", size: :tiny
    t.text "SCHGT", size: :tiny
    t.text "CCFIX", size: :tiny
    t.text "EPRIO", size: :tiny
    t.text "QMATA", size: :tiny
    t.float "RESVP", limit: 53
    t.text "PLNTY", size: :tiny
    t.text "UOMGR", size: :tiny
    t.text "UMRSL", size: :tiny
    t.float "ABFAC", limit: 53
    t.text "SFCPF", size: :tiny
    t.text "SHFLG", size: :tiny
    t.text "SHZET", size: :tiny
    t.text "MDACH", size: :tiny
    t.text "KZECH", size: :tiny
    t.text "MEGRU", size: :tiny
    t.text "MFRGR", size: :tiny
    t.float "VKUMC", limit: 53
    t.float "VKTRW", limit: 53
    t.text "KZAGL", size: :tiny
    t.text "FVIDK", size: :tiny
    t.text "FXPRU", size: :tiny
    t.text "LOGGR", size: :tiny
    t.text "FPRFM", size: :tiny
    t.float "GLGMG", limit: 53
    t.float "VKGLG", limit: 53
    t.text "INDUS", size: :tiny
    t.text "MOWNR", size: :tiny
    t.text "MOGRU", size: :tiny
    t.text "CASNR", size: :tiny
    t.text "GPNUM", size: :tiny
    t.text "STEUC", size: :tiny
    t.text "FABKZ", size: :tiny
    t.text "MATGR", size: :tiny
    t.text "VSPVB", size: :tiny
    t.text "DPLFS", size: :tiny
    t.text "DPLPU", size: :tiny
    t.float "DPLHO", limit: 53
    t.float "MINLS", limit: 53
    t.float "MAXLS", limit: 53
    t.float "FIXLS", limit: 53
    t.float "LTINC", limit: 53
    t.text "COMPL", size: :tiny
    t.text "CONVT", size: :tiny
    t.text "SHPRO", size: :tiny
    t.text "AHDIS", size: :tiny
    t.text "DIBER", size: :tiny
    t.text "KZPSP", size: :tiny
    t.text "OCMPF", size: :tiny
    t.text "APOKZ", size: :tiny
    t.text "MCRUE", size: :tiny
    t.text "LFMON", size: :tiny
    t.text "LFGJA", size: :tiny
    t.float "EISLO", limit: 53
    t.text "NCOST", size: :tiny
    t.text "ROTATION_DATE", size: :tiny
    t.text "UCHKZ", size: :tiny
    t.text "UCMAT", size: :tiny
    t.float "BWESB", limit: 53
    t.text "SGT_COVS", size: :tiny
    t.text "SGT_STATC", size: :tiny
    t.text "SGT_SCOPE", size: :tiny
    t.text "SGT_MRPSI", size: :tiny
    t.text "SGT_PRCM", size: :tiny
    t.text "SGT_CHINT", size: :tiny
    t.text "SGT_STK_PRT", size: :tiny
    t.text "SGT_DEFSC", size: :tiny
    t.text "SGT_MRP_ATP_STATUS", size: :tiny
    t.text "SGT_MMSTD", size: :tiny
    t.text "FSH_MG_ARUN_REQ", size: :tiny
    t.text "FSH_SEAIM", size: :tiny
    t.text "FSH_VAR_GROUP", size: :tiny
    t.text "FSH_KZECH", size: :tiny
    t.text "/VSO/R_PKGRP", size: :tiny
    t.text "/VSO/R_LANE_NUM", size: :tiny
    t.text "/VSO/R_PAL_VEND", size: :tiny
    t.text "/VSO/R_FORK_DIR", size: :tiny
    t.text "IUID_RELEVANT", size: :tiny
    t.text "IUID_TYPE", size: :tiny
    t.text "UID_IEA", size: :tiny
    t.text "CONS_PROCG", size: :tiny
    t.float "GI_PR_TIME", limit: 53
    t.text "MULTIPLE_EKGRP", size: :tiny
    t.text "REF_SCHEMA", size: :tiny
    t.text "MIN_TROC", size: :tiny
    t.text "MAX_TROC", size: :tiny
    t.float "TARGET_STOCK", limit: 53
    t.text "ZZSADC", size: :tiny
    t.text "ZZDDRAW", size: :tiny
    t.text "ZZEXPIND", size: :tiny
    t.text "ZZEXPALLW", size: :tiny
    t.text "ZZFUM", size: :tiny
    t.text "ZZINSREQ", size: :tiny
    t.text "ZZMODREQ", size: :tiny
    t.text "ZZHAZCHM", size: :tiny
    t.text "ZZCOLDEL", size: :tiny
    t.text "ZZSOR", size: :tiny
    t.text "ZZSORDAT", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MARC_G", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "WERKS", size: :tiny
    t.text "PSTAT", size: :tiny
    t.text "LVORM", size: :tiny
    t.text "BWTTY", size: :tiny
    t.text "XCHAR", size: :tiny
    t.text "MMSTA", size: :tiny
    t.text "MMSTD", size: :tiny
    t.text "MAABC", size: :tiny
    t.text "KZKRI", size: :tiny
    t.text "EKGRP", size: :tiny
    t.text "AUSME", size: :tiny
    t.text "DISPR", size: :tiny
    t.text "DISMM", size: :tiny
    t.text "DISPO", size: :tiny
    t.text "KZDIE", size: :tiny
    t.float "PLIFZ", limit: 53
    t.float "WEBAZ", limit: 53
    t.text "PERKZ", size: :tiny
    t.float "AUSSS", limit: 53
    t.text "DISLS", size: :tiny
    t.text "BESKZ", size: :tiny
    t.text "SOBSL", size: :tiny
    t.float "MINBE", limit: 53
    t.float "EISBE", limit: 53
    t.float "BSTMI", limit: 53
    t.float "BSTMA", limit: 53
    t.float "BSTFE", limit: 53
    t.float "BSTRF", limit: 53
    t.float "MABST", limit: 53
    t.float "LOSFX", limit: 53
    t.text "SBDKZ", size: :tiny
    t.text "LAGPR", size: :tiny
    t.text "ALTSL", size: :tiny
    t.text "KZAUS", size: :tiny
    t.text "AUSDT", size: :tiny
    t.text "NFMAT", size: :tiny
    t.text "KZBED", size: :tiny
    t.text "MISKZ", size: :tiny
    t.text "FHORI", size: :tiny
    t.text "PFREI", size: :tiny
    t.text "FFREI", size: :tiny
    t.text "RGEKZ", size: :tiny
    t.text "FEVOR", size: :tiny
    t.float "BEARZ", limit: 53
    t.float "RUEZT", limit: 53
    t.float "TRANZ", limit: 53
    t.float "BASMG", limit: 53
    t.float "DZEIT", limit: 53
    t.float "MAXLZ", limit: 53
    t.text "LZEIH", size: :tiny
    t.text "KZPRO", size: :tiny
    t.text "GPMKZ", size: :tiny
    t.float "UEETO", limit: 53
    t.text "UEETK", size: :tiny
    t.float "UNETO", limit: 53
    t.float "WZEIT", limit: 53
    t.text "ATPKZ", size: :tiny
    t.float "VZUSL", limit: 53
    t.text "HERBL", size: :tiny
    t.text "INSMK", size: :tiny
    t.float "SPROZ", limit: 53
    t.float "QUAZT", limit: 53
    t.text "SSQSS", size: :tiny
    t.float "MPDAU", limit: 53
    t.text "KZPPV", size: :tiny
    t.text "KZDKZ", size: :tiny
    t.float "WSTGH", limit: 53
    t.float "PRFRQ", limit: 53
    t.text "NKMPR", size: :tiny
    t.float "UMLMC", limit: 53
    t.text "LADGR", size: :tiny
    t.text "XCHPF", size: :tiny
    t.text "USEQU", size: :tiny
    t.float "LGRAD", limit: 53
    t.text "AUFTL", size: :tiny
    t.text "PLVAR", size: :tiny
    t.text "OTYPE", size: :tiny
    t.text "OBJID", size: :tiny
    t.text "MTVFP", size: :tiny
    t.text "PERIV", size: :tiny
    t.text "KZKFK", size: :tiny
    t.float "VRVEZ", limit: 53
    t.float "VBAMG", limit: 53
    t.float "VBEAZ", limit: 53
    t.text "LIZYK", size: :tiny
    t.text "BWSCL", size: :tiny
    t.text "KAUTB", size: :tiny
    t.text "KORDB", size: :tiny
    t.text "STAWN", size: :tiny
    t.text "HERKL", size: :tiny
    t.text "HERKR", size: :tiny
    t.text "EXPME", size: :tiny
    t.text "MTVER", size: :tiny
    t.text "PRCTR", size: :tiny
    t.float "TRAME", limit: 53
    t.text "MRPPP", size: :tiny
    t.text "SAUFT", size: :tiny
    t.text "FXHOR", size: :tiny
    t.text "VRMOD", size: :tiny
    t.text "VINT1", size: :tiny
    t.text "VINT2", size: :tiny
    t.text "VERKZ", size: :tiny
    t.text "STLAL", size: :tiny
    t.text "STLAN", size: :tiny
    t.text "PLNNR", size: :tiny
    t.text "APLAL", size: :tiny
    t.float "LOSGR", limit: 53
    t.text "SOBSK", size: :tiny
    t.text "FRTME", size: :tiny
    t.text "LGPRO", size: :tiny
    t.text "DISGR", size: :tiny
    t.float "KAUSF", limit: 53
    t.text "QZGTP", size: :tiny
    t.text "QMATV", size: :tiny
    t.float "TAKZT", limit: 53
    t.text "RWPRO", size: :tiny
    t.text "COPAM", size: :tiny
    t.text "ABCIN", size: :tiny
    t.text "AWSLS", size: :tiny
    t.text "SERNP", size: :tiny
    t.text "CUOBJ", size: :tiny
    t.text "STDPD", size: :tiny
    t.text "SFEPR", size: :tiny
    t.text "XMCNG", size: :tiny
    t.text "QSSYS", size: :tiny
    t.text "LFRHY", size: :tiny
    t.text "RDPRF", size: :tiny
    t.text "VRBMT", size: :tiny
    t.text "VRBWK", size: :tiny
    t.text "VRBDT", size: :tiny
    t.float "VRBFK", limit: 53
    t.text "AUTRU", size: :tiny
    t.text "PREFE", size: :tiny
    t.text "PRENC", size: :tiny
    t.text "PRENO", size: :tiny
    t.text "PREND", size: :tiny
    t.text "PRENE", size: :tiny
    t.text "PRENG", size: :tiny
    t.text "ITARK", size: :tiny
    t.text "SERVG", size: :tiny
    t.text "KZKUP", size: :tiny
    t.text "STRGR", size: :tiny
    t.text "CUOBV", size: :tiny
    t.text "LGFSB", size: :tiny
    t.text "SCHGT", size: :tiny
    t.text "CCFIX", size: :tiny
    t.text "EPRIO", size: :tiny
    t.text "QMATA", size: :tiny
    t.float "RESVP", limit: 53
    t.text "PLNTY", size: :tiny
    t.text "UOMGR", size: :tiny
    t.text "UMRSL", size: :tiny
    t.float "ABFAC", limit: 53
    t.text "SFCPF", size: :tiny
    t.text "SHFLG", size: :tiny
    t.text "SHZET", size: :tiny
    t.text "MDACH", size: :tiny
    t.text "KZECH", size: :tiny
    t.text "MEGRU", size: :tiny
    t.text "MFRGR", size: :tiny
    t.text "PROFIL", size: :tiny
    t.float "VKUMC", limit: 53
    t.float "VKTRW", limit: 53
    t.text "KZAGL", size: :tiny
    t.text "FVIDK", size: :tiny
    t.text "FXPRU", size: :tiny
    t.text "LOGGR", size: :tiny
    t.text "FPRFM", size: :tiny
    t.float "GLGMG", limit: 53
    t.float "VKGLG", limit: 53
    t.text "INDUS", size: :tiny
    t.text "MOWNR", size: :tiny
    t.text "MOGRU", size: :tiny
    t.text "CASNR", size: :tiny
    t.text "GPNUM", size: :tiny
    t.text "STEUC", size: :tiny
    t.text "FABKZ", size: :tiny
    t.text "MATGR", size: :tiny
    t.text "VSPVB", size: :tiny
    t.text "DPLFS", size: :tiny
    t.text "DPLPU", size: :tiny
    t.float "DPLHO", limit: 53
    t.float "MINLS", limit: 53
    t.float "MAXLS", limit: 53
    t.float "FIXLS", limit: 53
    t.float "LTINC", limit: 53
    t.text "COMPL", size: :tiny
    t.text "CONVT", size: :tiny
    t.text "SHPRO", size: :tiny
    t.text "AHDIS", size: :tiny
    t.text "DIBER", size: :tiny
    t.text "KZPSP", size: :tiny
    t.text "OCMPF", size: :tiny
    t.text "APOKZ", size: :tiny
    t.text "MCRUE", size: :tiny
    t.text "LFMON", size: :tiny
    t.text "LFGJA", size: :tiny
    t.float "EISLO", limit: 53
    t.text "NCOST", size: :tiny
    t.text "ROTATION_DATE", size: :tiny
    t.text "UCHKZ", size: :tiny
    t.text "UCMAT", size: :tiny
    t.float "BWESB", limit: 53
    t.text "SGT_COVS", size: :tiny
    t.text "SGT_STATC", size: :tiny
    t.text "SGT_SCOPE", size: :tiny
    t.text "SGT_MRPSI", size: :tiny
    t.text "SGT_PRCM", size: :tiny
    t.text "SGT_CHINT", size: :tiny
    t.text "SGT_STK_PRT", size: :tiny
    t.text "SGT_DEFSC", size: :tiny
    t.text "SGT_MRP_ATP_STATUS", size: :tiny
    t.text "SGT_MMSTD", size: :tiny
    t.text "FSH_MG_ARUN_REQ", size: :tiny
    t.text "FSH_SEAIM", size: :tiny
    t.text "FSH_VAR_GROUP", size: :tiny
    t.text "FSH_KZECH", size: :tiny
    t.text "FSH_CALENDAR_GROUP", size: :tiny
    t.text "ARUN_FIX_BATCH", size: :tiny
    t.text "PPSKZ", size: :tiny
    t.text "CONS_PROCG", size: :tiny
    t.float "GI_PR_TIME", limit: 53
    t.text "MULTIPLE_EKGRP", size: :tiny
    t.text "REF_SCHEMA", size: :tiny
    t.text "MIN_TROC", size: :tiny
    t.text "MAX_TROC", size: :tiny
    t.float "TARGET_STOCK", limit: 53
    t.text "NF_FLAG", size: :tiny
    t.float "/CWM/UMLMC", limit: 53
    t.float "/CWM/TRAME", limit: 53
    t.float "/CWM/BWESB", limit: 53
    t.text "SCM_MATLOCID_GUID16", size: :tiny
    t.text "SCM_MATLOCID_GUID22", size: :tiny
    t.text "SCM_GRPRT", size: :tiny
    t.text "SCM_GIPRT", size: :tiny
    t.float "SCM_SCOST", limit: 53
    t.float "SCM_RELDT", limit: 53
    t.text "SCM_RRP_TYPE", size: :tiny
    t.text "SCM_HEUR_ID", size: :tiny
    t.text "SCM_PACKAGE_ID", size: :tiny
    t.float "SCM_SSPEN", limit: 53
    t.text "SCM_GET_ALERTS", size: :tiny
    t.text "SCM_RES_NET_NAME", size: :tiny
    t.float "SCM_CONHAP", limit: 53
    t.text "SCM_HUNIT", size: :tiny
    t.float "SCM_CONHAP_OUT", limit: 53
    t.text "SCM_HUNIT_OUT", size: :tiny
    t.text "SCM_SHELF_LIFE_LOC", size: :tiny
    t.text "SCM_SHELF_LIFE_DUR", size: :tiny
    t.text "SCM_MATURITY_DUR", size: :tiny
    t.text "SCM_SHLF_LFE_REQ_MIN", size: :tiny
    t.text "SCM_SHLF_LFE_REQ_MAX", size: :tiny
    t.text "SCM_LSUOM", size: :tiny
    t.text "SCM_REORD_DUR", size: :tiny
    t.text "SCM_TARGET_DUR", size: :tiny
    t.text "SCM_TSTRID", size: :tiny
    t.text "SCM_STRA1", size: :tiny
    t.text "SCM_PEG_PAST_ALERT", size: :tiny
    t.text "SCM_PEG_FUTURE_ALERT", size: :tiny
    t.text "SCM_PEG_STRATEGY", size: :tiny
    t.text "SCM_PEG_WO_ALERT_FST", size: :tiny
    t.text "SCM_FIXPEG_PROD_SET", size: :tiny
    t.text "SCM_WHATBOM", size: :tiny
    t.text "SCM_RRP_SEL_GROUP", size: :tiny
    t.text "SCM_INTSRC_PROF", size: :tiny
    t.float "SCM_PRIO", limit: 53
    t.float "SCM_MIN_PASS_AMOUNT", limit: 53
    t.text "SCM_PROFID", size: :tiny
    t.text "SCM_GES_MNG_USE", size: :tiny
    t.text "SCM_GES_BST_USE", size: :tiny
    t.text "DUMMY_PLNT_INCL_EEW_PS", size: :tiny
    t.float "/SAPMP/TOLPRPL", limit: 53
    t.float "/SAPMP/TOLPRMI", limit: 53
    t.text "/STTPEC/SERVALID", size: :tiny
    t.text "/VSO/R_PKGRP", size: :tiny
    t.text "/VSO/R_LANE_NUM", size: :tiny
    t.text "/VSO/R_PAL_VEND", size: :tiny
    t.text "/VSO/R_FORK_DIR", size: :tiny
    t.text "IUID_RELEVANT", size: :tiny
    t.text "IUID_TYPE", size: :tiny
    t.text "UID_IEA", size: :tiny
    t.text "DPCBT", size: :tiny
    t.text "ZZLIKE_ITEM", size: :tiny
    t.text "ZZPROHIBITED", size: :tiny
    t.text "ZZPERMIT_1", size: :tiny
    t.text "ZZPERMIT_2", size: :tiny
    t.text "ZZPERMIT_3", size: :tiny
    t.text "ZZPERMIT_4", size: :tiny
    t.text "ZZPERMIT_5", size: :tiny
    t.text "ZZPERMIT_6", size: :tiny
    t.text "ZZPERMIT_7", size: :tiny
    t.text "ZZPERMIT_8", size: :tiny
    t.text "ZZPERMIT_9", size: :tiny
    t.text "ZZDUTY_DRAW", size: :tiny
    t.text "ZZSADC", size: :tiny
    t.text "ZZPROHIB_COMMENT", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MARC_M", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "WERKS", size: :tiny
    t.text "PSTAT", size: :tiny
    t.text "LVORM", size: :tiny
    t.text "BWTTY", size: :tiny
    t.text "XCHAR", size: :tiny
    t.text "MMSTA", size: :tiny
    t.text "MMSTD", size: :tiny
    t.text "MAABC", size: :tiny
    t.text "KZKRI", size: :tiny
    t.text "EKGRP", size: :tiny
    t.text "AUSME", size: :tiny
    t.text "DISPR", size: :tiny
    t.text "DISMM", size: :tiny
    t.text "DISPO", size: :tiny
    t.text "KZDIE", size: :tiny
    t.float "PLIFZ", limit: 53
    t.float "WEBAZ", limit: 53
    t.text "PERKZ", size: :tiny
    t.float "AUSSS", limit: 53
    t.text "DISLS", size: :tiny
    t.text "BESKZ", size: :tiny
    t.text "SOBSL", size: :tiny
    t.float "MINBE", limit: 53
    t.float "EISBE", limit: 53
    t.float "BSTMI", limit: 53
    t.float "BSTMA", limit: 53
    t.float "BSTFE", limit: 53
    t.float "BSTRF", limit: 53
    t.float "MABST", limit: 53
    t.float "LOSFX", limit: 53
    t.text "SBDKZ", size: :tiny
    t.text "LAGPR", size: :tiny
    t.text "ALTSL", size: :tiny
    t.text "KZAUS", size: :tiny
    t.text "AUSDT", size: :tiny
    t.text "NFMAT", size: :tiny
    t.text "KZBED", size: :tiny
    t.text "MISKZ", size: :tiny
    t.text "FHORI", size: :tiny
    t.text "PFREI", size: :tiny
    t.text "FFREI", size: :tiny
    t.text "RGEKZ", size: :tiny
    t.text "FEVOR", size: :tiny
    t.float "BEARZ", limit: 53
    t.float "RUEZT", limit: 53
    t.float "TRANZ", limit: 53
    t.float "BASMG", limit: 53
    t.float "DZEIT", limit: 53
    t.float "MAXLZ", limit: 53
    t.text "LZEIH", size: :tiny
    t.text "KZPRO", size: :tiny
    t.text "GPMKZ", size: :tiny
    t.float "UEETO", limit: 53
    t.text "UEETK", size: :tiny
    t.float "UNETO", limit: 53
    t.float "WZEIT", limit: 53
    t.text "ATPKZ", size: :tiny
    t.float "VZUSL", limit: 53
    t.text "HERBL", size: :tiny
    t.text "INSMK", size: :tiny
    t.float "SPROZ", limit: 53
    t.float "QUAZT", limit: 53
    t.text "SSQSS", size: :tiny
    t.float "MPDAU", limit: 53
    t.text "KZPPV", size: :tiny
    t.text "KZDKZ", size: :tiny
    t.float "WSTGH", limit: 53
    t.float "PRFRQ", limit: 53
    t.text "NKMPR", size: :tiny
    t.float "UMLMC", limit: 53
    t.text "LADGR", size: :tiny
    t.text "XCHPF", size: :tiny
    t.text "USEQU", size: :tiny
    t.float "LGRAD", limit: 53
    t.text "AUFTL", size: :tiny
    t.text "PLVAR", size: :tiny
    t.text "OTYPE", size: :tiny
    t.text "OBJID", size: :tiny
    t.text "MTVFP", size: :tiny
    t.text "PERIV", size: :tiny
    t.text "KZKFK", size: :tiny
    t.float "VRVEZ", limit: 53
    t.float "VBAMG", limit: 53
    t.float "VBEAZ", limit: 53
    t.text "LIZYK", size: :tiny
    t.text "BWSCL", size: :tiny
    t.text "KAUTB", size: :tiny
    t.text "KORDB", size: :tiny
    t.text "STAWN", size: :tiny
    t.text "HERKL", size: :tiny
    t.text "HERKR", size: :tiny
    t.text "EXPME", size: :tiny
    t.text "MTVER", size: :tiny
    t.text "PRCTR", size: :tiny
    t.float "TRAME", limit: 53
    t.text "MRPPP", size: :tiny
    t.text "SAUFT", size: :tiny
    t.text "FXHOR", size: :tiny
    t.text "VRMOD", size: :tiny
    t.text "VINT1", size: :tiny
    t.text "VINT2", size: :tiny
    t.text "VERKZ", size: :tiny
    t.text "STLAL", size: :tiny
    t.text "STLAN", size: :tiny
    t.text "PLNNR", size: :tiny
    t.text "APLAL", size: :tiny
    t.float "LOSGR", limit: 53
    t.text "SOBSK", size: :tiny
    t.text "FRTME", size: :tiny
    t.text "LGPRO", size: :tiny
    t.text "DISGR", size: :tiny
    t.float "KAUSF", limit: 53
    t.text "QZGTP", size: :tiny
    t.text "QMATV", size: :tiny
    t.float "TAKZT", limit: 53
    t.text "RWPRO", size: :tiny
    t.text "COPAM", size: :tiny
    t.text "ABCIN", size: :tiny
    t.text "AWSLS", size: :tiny
    t.text "SERNP", size: :tiny
    t.text "CUOBJ", size: :tiny
    t.text "STDPD", size: :tiny
    t.text "SFEPR", size: :tiny
    t.text "XMCNG", size: :tiny
    t.text "QSSYS", size: :tiny
    t.text "LFRHY", size: :tiny
    t.text "RDPRF", size: :tiny
    t.text "VRBMT", size: :tiny
    t.text "VRBWK", size: :tiny
    t.text "VRBDT", size: :tiny
    t.float "VRBFK", limit: 53
    t.text "AUTRU", size: :tiny
    t.text "PREFE", size: :tiny
    t.text "PRENC", size: :tiny
    t.text "PRENO", size: :tiny
    t.text "PREND", size: :tiny
    t.text "PRENE", size: :tiny
    t.text "PRENG", size: :tiny
    t.text "ITARK", size: :tiny
    t.text "SERVG", size: :tiny
    t.text "KZKUP", size: :tiny
    t.text "STRGR", size: :tiny
    t.text "CUOBV", size: :tiny
    t.text "LGFSB", size: :tiny
    t.text "SCHGT", size: :tiny
    t.text "CCFIX", size: :tiny
    t.text "EPRIO", size: :tiny
    t.text "QMATA", size: :tiny
    t.float "RESVP", limit: 53
    t.text "PLNTY", size: :tiny
    t.text "UOMGR", size: :tiny
    t.text "UMRSL", size: :tiny
    t.float "ABFAC", limit: 53
    t.text "SFCPF", size: :tiny
    t.text "SHFLG", size: :tiny
    t.text "SHZET", size: :tiny
    t.text "MDACH", size: :tiny
    t.text "KZECH", size: :tiny
    t.text "MEGRU", size: :tiny
    t.text "MFRGR", size: :tiny
    t.float "VKUMC", limit: 53
    t.float "VKTRW", limit: 53
    t.text "KZAGL", size: :tiny
    t.text "FVIDK", size: :tiny
    t.text "FXPRU", size: :tiny
    t.text "LOGGR", size: :tiny
    t.text "FPRFM", size: :tiny
    t.float "GLGMG", limit: 53
    t.float "VKGLG", limit: 53
    t.text "INDUS", size: :tiny
    t.text "MOWNR", size: :tiny
    t.text "MOGRU", size: :tiny
    t.text "CASNR", size: :tiny
    t.text "GPNUM", size: :tiny
    t.text "STEUC", size: :tiny
    t.text "FABKZ", size: :tiny
    t.text "MATGR", size: :tiny
    t.text "VSPVB", size: :tiny
    t.text "DPLFS", size: :tiny
    t.text "DPLPU", size: :tiny
    t.float "DPLHO", limit: 53
    t.float "MINLS", limit: 53
    t.float "MAXLS", limit: 53
    t.float "FIXLS", limit: 53
    t.float "LTINC", limit: 53
    t.text "COMPL", size: :tiny
    t.text "CONVT", size: :tiny
    t.text "SHPRO", size: :tiny
    t.text "AHDIS", size: :tiny
    t.text "DIBER", size: :tiny
    t.text "KZPSP", size: :tiny
    t.text "OCMPF", size: :tiny
    t.text "APOKZ", size: :tiny
    t.text "MCRUE", size: :tiny
    t.text "LFMON", size: :tiny
    t.text "LFGJA", size: :tiny
    t.float "EISLO", limit: 53
    t.text "NCOST", size: :tiny
    t.text "ROTATION_DATE", size: :tiny
    t.text "UCHKZ", size: :tiny
    t.text "UCMAT", size: :tiny
    t.float "BWESB", limit: 53
    t.text "SGT_COVS", size: :tiny
    t.text "SGT_STATC", size: :tiny
    t.text "SGT_SCOPE", size: :tiny
    t.text "SGT_MRPSI", size: :tiny
    t.text "SGT_PRCM", size: :tiny
    t.text "SGT_CHINT", size: :tiny
    t.text "SGT_STK_PRT", size: :tiny
    t.text "SGT_DEFSC", size: :tiny
    t.text "SGT_MRP_ATP_STATUS", size: :tiny
    t.text "SGT_MMSTD", size: :tiny
    t.text "FSH_MG_ARUN_REQ", size: :tiny
    t.text "FSH_SEAIM", size: :tiny
    t.text "FSH_VAR_GROUP", size: :tiny
    t.text "FSH_KZECH", size: :tiny
    t.float "/SAPMP/TOLPRPL", limit: 53
    t.float "/SAPMP/TOLPRMI", limit: 53
    t.text "/VSO/R_PKGRP", size: :tiny
    t.text "/VSO/R_LANE_NUM", size: :tiny
    t.text "/VSO/R_PAL_VEND", size: :tiny
    t.text "/VSO/R_FORK_DIR", size: :tiny
    t.text "IUID_RELEVANT", size: :tiny
    t.text "IUID_TYPE", size: :tiny
    t.text "UID_IEA", size: :tiny
    t.text "CONS_PROCG", size: :tiny
    t.float "GI_PR_TIME", limit: 53
    t.text "MULTIPLE_EKGRP", size: :tiny
    t.text "REF_SCHEMA", size: :tiny
    t.text "MIN_TROC", size: :tiny
    t.text "MAX_TROC", size: :tiny
    t.float "TARGET_STOCK", limit: 53
    t.text "ZDLISTDATE", size: :tiny
    t.text "ZLISTED", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MARD_B", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "WERKS", size: :tiny
    t.text "LGORT", size: :tiny
    t.text "PSTAT", size: :tiny
    t.text "LVORM", size: :tiny
    t.text "LFGJA", size: :tiny
    t.text "LFMON", size: :tiny
    t.text "SPERR", size: :tiny
    t.float "LABST", limit: 53
    t.float "UMLME", limit: 53
    t.float "INSME", limit: 53
    t.float "EINME", limit: 53
    t.float "SPEME", limit: 53
    t.float "RETME", limit: 53
    t.float "VMLAB", limit: 53
    t.float "VMUML", limit: 53
    t.float "VMINS", limit: 53
    t.float "VMEIN", limit: 53
    t.float "VMSPE", limit: 53
    t.float "VMRET", limit: 53
    t.text "KZILL", size: :tiny
    t.text "KZILQ", size: :tiny
    t.text "KZILE", size: :tiny
    t.text "KZILS", size: :tiny
    t.text "KZVLL", size: :tiny
    t.text "KZVLQ", size: :tiny
    t.text "KZVLE", size: :tiny
    t.text "KZVLS", size: :tiny
    t.text "DISKZ", size: :tiny
    t.text "LSOBS", size: :tiny
    t.float "LMINB", limit: 53
    t.float "LBSTF", limit: 53
    t.text "HERKL", size: :tiny
    t.text "EXPPG", size: :tiny
    t.text "EXVER", size: :tiny
    t.text "LGPBE", size: :tiny
    t.float "KLABS", limit: 53
    t.float "KINSM", limit: 53
    t.float "KEINM", limit: 53
    t.float "KSPEM", limit: 53
    t.datetime "DLINL", precision: nil
    t.text "PRCTL", size: :tiny
    t.text "ERSDA", size: :tiny
    t.float "VKLAB", limit: 53
    t.float "VKUML", limit: 53
    t.text "LWMKB", size: :tiny
    t.float "BSKRF", limit: 53
    t.text "MDRUE", size: :tiny
    t.text "MDJIN", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MARD_G", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "WERKS", size: :tiny
    t.text "LGORT", size: :tiny
    t.text "PSTAT", size: :tiny
    t.text "LVORM", size: :tiny
    t.text "LFGJA", size: :tiny
    t.text "LFMON", size: :tiny
    t.text "SPERR", size: :tiny
    t.float "LABST", limit: 53
    t.float "UMLME", limit: 53
    t.float "INSME", limit: 53
    t.float "EINME", limit: 53
    t.float "SPEME", limit: 53
    t.float "RETME", limit: 53
    t.float "VMLAB", limit: 53
    t.float "VMUML", limit: 53
    t.float "VMINS", limit: 53
    t.float "VMEIN", limit: 53
    t.float "VMSPE", limit: 53
    t.float "VMRET", limit: 53
    t.text "KZILL", size: :tiny
    t.text "KZILQ", size: :tiny
    t.text "KZILE", size: :tiny
    t.text "KZILS", size: :tiny
    t.text "KZVLL", size: :tiny
    t.text "KZVLQ", size: :tiny
    t.text "KZVLE", size: :tiny
    t.text "KZVLS", size: :tiny
    t.text "DISKZ", size: :tiny
    t.text "LSOBS", size: :tiny
    t.float "LMINB", limit: 53
    t.float "LBSTF", limit: 53
    t.text "HERKL", size: :tiny
    t.text "EXPPG", size: :tiny
    t.text "EXVER", size: :tiny
    t.text "LGPBE", size: :tiny
    t.float "KLABS", limit: 53
    t.float "KINSM", limit: 53
    t.float "KEINM", limit: 53
    t.float "KSPEM", limit: 53
    t.datetime "DLINL", precision: nil
    t.text "PRCTL", size: :tiny
    t.text "ERSDA", size: :tiny
    t.float "VKLAB", limit: 53
    t.float "VKUML", limit: 53
    t.text "LWMKB", size: :tiny
    t.float "BSKRF", limit: 53
    t.text "MDRUE", size: :tiny
    t.text "MDJIN", size: :tiny
    t.text "DUMMY_STL_INCL_EEW_PS", size: :tiny
    t.float "FSH_SALLOC_QTY_S", limit: 53
    t.float "/CWM/LABST", limit: 53
    t.float "/CWM/INSME", limit: 53
    t.float "/CWM/EINME", limit: 53
    t.float "/CWM/SPEME", limit: 53
    t.float "/CWM/RETME", limit: 53
    t.float "/CWM/UMLME", limit: 53
    t.float "/CWM/KLABS", limit: 53
    t.float "/CWM/KINSM", limit: 53
    t.float "/CWM/KEINM", limit: 53
    t.float "/CWM/KSPEM", limit: 53
    t.float "/CWM/VMLAB", limit: 53
    t.float "/CWM/VMINS", limit: 53
    t.float "/CWM/VMEIN", limit: 53
    t.float "/CWM/VMSPE", limit: 53
    t.float "/CWM/VMRET", limit: 53
    t.float "/CWM/VMUML", limit: 53
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MARD_GD_NEW", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.string "MANDT", limit: 18
    t.string "MATNR", limit: 33
    t.string "WERKS", limit: 19
    t.string "LGORT", limit: 19
    t.string "PSTAT", limit: 30
    t.string "LVORM", limit: 16
    t.integer "LFGJA"
    t.integer "LFMON"
    t.string "SPERR", limit: 16
    t.decimal "LABST", precision: 16, scale: 2
    t.decimal "UMLME", precision: 16, scale: 2
    t.decimal "INSME", precision: 16, scale: 2
    t.decimal "EINME", precision: 16, scale: 2
    t.decimal "SPEME", precision: 16, scale: 2
    t.decimal "RETME", precision: 16, scale: 2
    t.decimal "VMLAB", precision: 16, scale: 2
    t.decimal "VMUML", precision: 16, scale: 2
    t.decimal "VMINS", precision: 16, scale: 2
    t.decimal "VMEIN", precision: 16, scale: 2
    t.decimal "VMSPE", precision: 16, scale: 2
    t.decimal "VMRET", precision: 16, scale: 2
    t.string "KZILL", limit: 18
    t.string "KZILQ", limit: 18
    t.string "KZILE", limit: 18
    t.string "KZILS", limit: 18
    t.string "KZVLL", limit: 18
    t.string "KZVLQ", limit: 18
    t.string "KZVLE", limit: 18
    t.string "KZVLS", limit: 18
    t.string "DISKZ", limit: 16
    t.string "LSOBS", limit: 17
    t.decimal "LMINB", precision: 16, scale: 2
    t.decimal "LBSTF", precision: 16, scale: 2
    t.string "HERKL", limit: 18
    t.string "EXPPG", limit: 16
    t.string "EXVER", limit: 17
    t.string "LGPBE", limit: 25
    t.decimal "KLABS", precision: 16, scale: 2
    t.decimal "KINSM", precision: 16, scale: 2
    t.decimal "KEINM", precision: 16, scale: 2
    t.decimal "KSPEM", precision: 16, scale: 2
    t.string "DLINL", limit: 10
    t.string "PRCTL", limit: 25
    t.string "ERSDA", limit: 10
    t.decimal "VKLAB", precision: 16, scale: 2
    t.decimal "VKUML", precision: 16, scale: 2
    t.string "LWMKB", limit: 18
    t.float "BSKRF", limit: 53
    t.string "MDRUE", limit: 16
    t.integer "MDJIN"
    t.string "load_date", limit: 10
    t.string "source", limit: 2
  end

  create_table "MARD_M", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "WERKS", size: :tiny
    t.text "LGORT", size: :tiny
    t.text "PSTAT", size: :tiny
    t.text "LVORM", size: :tiny
    t.text "LFGJA", size: :tiny
    t.text "LFMON", size: :tiny
    t.text "SPERR", size: :tiny
    t.float "LABST", limit: 53
    t.float "UMLME", limit: 53
    t.float "INSME", limit: 53
    t.float "EINME", limit: 53
    t.float "SPEME", limit: 53
    t.float "RETME", limit: 53
    t.float "VMLAB", limit: 53
    t.float "VMUML", limit: 53
    t.float "VMINS", limit: 53
    t.float "VMEIN", limit: 53
    t.float "VMSPE", limit: 53
    t.float "VMRET", limit: 53
    t.text "KZILL", size: :tiny
    t.text "KZILQ", size: :tiny
    t.text "KZILE", size: :tiny
    t.text "KZILS", size: :tiny
    t.text "KZVLL", size: :tiny
    t.text "KZVLQ", size: :tiny
    t.text "KZVLE", size: :tiny
    t.text "KZVLS", size: :tiny
    t.text "DISKZ", size: :tiny
    t.text "LSOBS", size: :tiny
    t.float "LMINB", limit: 53
    t.float "LBSTF", limit: 53
    t.text "HERKL", size: :tiny
    t.text "EXPPG", size: :tiny
    t.text "EXVER", size: :tiny
    t.text "LGPBE", size: :tiny
    t.float "KLABS", limit: 53
    t.float "KINSM", limit: 53
    t.float "KEINM", limit: 53
    t.float "KSPEM", limit: 53
    t.datetime "DLINL", precision: nil
    t.text "PRCTL", size: :tiny
    t.datetime "ERSDA", precision: nil
    t.float "VKLAB", limit: 53
    t.float "VKUML", limit: 53
    t.text "LWMKB", size: :tiny
    t.float "BSKRF", limit: 53
    t.text "MDRUE", size: :tiny
    t.text "MDJIN", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MARM_B", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "MEINH", size: :tiny
    t.float "UMREZ", limit: 53
    t.float "UMREN", limit: 53
    t.text "EANNR", size: :tiny
    t.text "EAN11", size: :tiny
    t.text "NUMTP", size: :tiny
    t.float "LAENG", limit: 53
    t.float "BREIT", limit: 53
    t.float "HOEHE", limit: 53
    t.text "MEABM", size: :tiny
    t.float "VOLUM", limit: 53
    t.text "VOLEH", size: :tiny
    t.float "BRGEW", limit: 53
    t.text "GEWEI", size: :tiny
    t.text "MESUB", size: :tiny
    t.text "ATINN", size: :tiny
    t.text "MESRT", size: :tiny
    t.text "XFHDW", size: :tiny
    t.text "XBEWW", size: :tiny
    t.text "KZWSO", size: :tiny
    t.text "MSEHI", size: :tiny
    t.text "BFLME_MARM", size: :tiny
    t.text "GTIN_VARIANT", size: :tiny
    t.float "NEST_FTR", limit: 53
    t.float "MAX_STACK", limit: 53
    t.float "CAPAUSE", limit: 53
    t.text "TY2TQ", size: :tiny
    t.text "ZZECOM", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MARM_G", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "MEINH", size: :tiny
    t.float "UMREZ", limit: 53
    t.float "UMREN", limit: 53
    t.text "EANNR", size: :tiny
    t.text "EAN11", size: :tiny
    t.text "NUMTP", size: :tiny
    t.float "LAENG", limit: 53
    t.float "BREIT", limit: 53
    t.float "HOEHE", limit: 53
    t.text "MEABM", size: :tiny
    t.float "VOLUM", limit: 53
    t.text "VOLEH", size: :tiny
    t.float "BRGEW", limit: 53
    t.text "GEWEI", size: :tiny
    t.text "MESUB", size: :tiny
    t.text "ATINN", size: :tiny
    t.text "MESRT", size: :tiny
    t.text "XFHDW", size: :tiny
    t.text "XBEWW", size: :tiny
    t.text "KZWSO", size: :tiny
    t.text "MSEHI", size: :tiny
    t.text "BFLME_MARM", size: :tiny
    t.text "GTIN_VARIANT", size: :tiny
    t.float "NEST_FTR", limit: 53
    t.float "MAX_STACK", limit: 53
    t.float "TOP_LOAD_FULL", limit: 53
    t.text "TOP_LOAD_FULL_UOM", size: :tiny
    t.float "CAPAUSE", limit: 53
    t.text "TY2TQ", size: :tiny
    t.text "DUMMY_UOM_INCL_EEW_PS", size: :tiny
    t.text "/CWM/TY2TQ", size: :tiny
    t.text "/STTPEC/NCODE", size: :tiny
    t.text "/STTPEC/NCODE_TY", size: :tiny
    t.text "/STTPEC/RCODE", size: :tiny
    t.text "/STTPEC/SERUSE", size: :tiny
    t.text "/STTPEC/SYNCCHG", size: :tiny
    t.text "/STTPEC/SERNO_MANAGED", size: :tiny
    t.text "/STTPEC/SERNO_PROV_BUP", size: :tiny
    t.text "/STTPEC/UOM_SYNC", size: :tiny
    t.text "PCBUT", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MARM_GD_NEW", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.string "MANDT", limit: 18
    t.string "MATNR", limit: 33
    t.string "MEINH", limit: 18
    t.float "UMREZ", limit: 53
    t.float "UMREN", limit: 53
    t.string "EANNR", limit: 28
    t.string "EAN11", limit: 33
    t.string "NUMTP", limit: 17
    t.decimal "LAENG", precision: 16, scale: 2
    t.decimal "BREIT", precision: 16, scale: 2
    t.decimal "HOEHE", precision: 16, scale: 2
    t.string "MEABM", limit: 18
    t.decimal "VOLUM", precision: 16, scale: 2
    t.string "VOLEH", limit: 18
    t.decimal "BRGEW", precision: 16, scale: 2
    t.string "GEWEI", limit: 18
    t.string "MESUB", limit: 18
    t.bigint "ATINN"
    t.integer "MESRT"
    t.string "XFHDW", limit: 16
    t.string "XBEWW", limit: 16
    t.string "KZWSO", limit: 16
    t.string "MSEHI", limit: 18
    t.string "BFLME_MARM", limit: 16
    t.string "GTIN_VARIANT", limit: 17
    t.float "NEST_FTR", limit: 53
    t.integer "MAX_STACK"
    t.decimal "CAPAUSE", precision: 18, scale: 2
    t.string "TY2TQ", limit: 16
    t.string "load_date", limit: 10
    t.string "source", limit: 2
  end

  create_table "MARM_M", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "MEINH", size: :tiny
    t.float "UMREZ", limit: 53
    t.float "UMREN", limit: 53
    t.text "EANNR", size: :tiny
    t.text "EAN11", size: :tiny
    t.text "NUMTP", size: :tiny
    t.float "LAENG", limit: 53
    t.float "BREIT", limit: 53
    t.float "HOEHE", limit: 53
    t.text "MEABM", size: :tiny
    t.float "VOLUM", limit: 53
    t.text "VOLEH", size: :tiny
    t.float "BRGEW", limit: 53
    t.text "GEWEI", size: :tiny
    t.text "MESUB", size: :tiny
    t.text "ATINN", size: :tiny
    t.text "MESRT", size: :tiny
    t.text "XFHDW", size: :tiny
    t.text "XBEWW", size: :tiny
    t.text "KZWSO", size: :tiny
    t.text "MSEHI", size: :tiny
    t.text "BFLME_MARM", size: :tiny
    t.text "GTIN_VARIANT", size: :tiny
    t.float "NEST_FTR", limit: 53
    t.float "MAX_STACK", limit: 53
    t.float "CAPAUSE", limit: 53
    t.text "TY2TQ", size: :tiny
    t.text "ZZECOM", size: :tiny
    t.text "ZZONLINE", size: :tiny
    t.text "ZPACKTYPE", size: :tiny
    t.float "ZPACKLGHT", limit: 53
    t.float "ZPACKWGHT", limit: 53
    t.float "ZPACKHGTH", limit: 53
    t.text "ZPACKUNIT", size: :tiny
    t.float "ZPACKGW", limit: 53
    t.text "ZPACKCMP", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MAW1_B", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "BBTYP", size: :tiny
    t.text "SERVV", size: :tiny
    t.text "WMAAB", size: :tiny
    t.text "WEKGR", size: :tiny
    t.text "WVRKM", size: :tiny
    t.text "WAUSM", size: :tiny
    t.text "WHERL", size: :tiny
    t.text "WHERR", size: :tiny
    t.text "WLADG", size: :tiny
    t.text "SSTUF", size: :tiny
    t.text "PFLKS", size: :tiny
    t.text "LSTFL", size: :tiny
    t.text "LSTVZ", size: :tiny
    t.text "LSTAK", size: :tiny
    t.datetime "LDVFL", precision: nil
    t.datetime "LDBFL", precision: nil
    t.datetime "LDVZL", precision: nil
    t.datetime "LDBZL", precision: nil
    t.datetime "VDVFL", precision: nil
    t.datetime "VDBFL", precision: nil
    t.datetime "VDVZL", precision: nil
    t.datetime "VDBZL", precision: nil
    t.text "WBKLA", size: :tiny
    t.text "WSTAW", size: :tiny
    t.text "WPSTA", size: :tiny
    t.float "WBWSP", limit: 53
    t.text "WEXPM", size: :tiny
    t.text "KWDHT", size: :tiny
    t.text "PRERF", size: :tiny
    t.text "RBZUL", size: :tiny
    t.text "SCAGR", size: :tiny
    t.text "CNPRO", size: :tiny
    t.text "ZZHOUSE", size: :tiny
    t.text "ZZPROD_TYPE", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MAW1_G", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "BBTYP", size: :tiny
    t.text "SERVV", size: :tiny
    t.text "WMAAB", size: :tiny
    t.text "WEKGR", size: :tiny
    t.text "WVRKM", size: :tiny
    t.text "WAUSM", size: :tiny
    t.text "WHERL", size: :tiny
    t.text "WHERR", size: :tiny
    t.text "WLADG", size: :tiny
    t.text "SSTUF", size: :tiny
    t.text "PFLKS", size: :tiny
    t.text "LSTFL", size: :tiny
    t.text "LSTVZ", size: :tiny
    t.text "LSTAK", size: :tiny
    t.datetime "LDVFL", precision: nil
    t.datetime "LDBFL", precision: nil
    t.datetime "LDVZL", precision: nil
    t.datetime "LDBZL", precision: nil
    t.datetime "VDVFL", precision: nil
    t.datetime "VDBFL", precision: nil
    t.datetime "VDVZL", precision: nil
    t.datetime "VDBZL", precision: nil
    t.text "WBKLA", size: :tiny
    t.text "WSTAW", size: :tiny
    t.text "WPSTA", size: :tiny
    t.float "WBWSP", limit: 53
    t.text "WEXPM", size: :tiny
    t.text "KWDHT", size: :tiny
    t.text "PRERF", size: :tiny
    t.text "RBZUL", size: :tiny
    t.text "SCAGR", size: :tiny
    t.text "CNPRO", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MAW1_M", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "BBTYP", size: :tiny
    t.text "SERVV", size: :tiny
    t.text "WMAAB", size: :tiny
    t.text "WEKGR", size: :tiny
    t.text "WVRKM", size: :tiny
    t.text "WAUSM", size: :tiny
    t.text "WHERL", size: :tiny
    t.text "WHERR", size: :tiny
    t.text "WLADG", size: :tiny
    t.text "SSTUF", size: :tiny
    t.text "PFLKS", size: :tiny
    t.text "LSTFL", size: :tiny
    t.text "LSTVZ", size: :tiny
    t.text "LSTAK", size: :tiny
    t.text "LDVFL", size: :tiny
    t.text "LDBFL", size: :tiny
    t.text "LDVZL", size: :tiny
    t.text "LDBZL", size: :tiny
    t.text "VDVFL", size: :tiny
    t.text "VDBFL", size: :tiny
    t.text "VDVZL", size: :tiny
    t.text "VDBZL", size: :tiny
    t.text "WBKLA", size: :tiny
    t.text "WSTAW", size: :tiny
    t.text "WPSTA", size: :tiny
    t.float "WBWSP", limit: 53
    t.text "WEXPM", size: :tiny
    t.text "KWDHT", size: :tiny
    t.text "PRERF", size: :tiny
    t.text "RBZUL", size: :tiny
    t.text "SCAGR", size: :tiny
    t.text "CNPRO", size: :tiny
    t.text "ZZHOUSE", size: :tiny
    t.text "ZZPROD_TYPE", size: :tiny
    t.text "ZZQPN", size: :tiny
    t.text "ZZQPN2", size: :tiny
    t.text "ZZQPN3", size: :tiny
    t.text "ZZQPN4", size: :tiny
    t.text "ZZQPN5", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MBEW_B", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "BWKEY", size: :tiny
    t.text "BWTAR", size: :tiny
    t.text "LVORM", size: :tiny
    t.float "LBKUM", limit: 53
    t.float "SALK3", limit: 53
    t.text "VPRSV", size: :tiny
    t.float "VERPR", limit: 53
    t.float "STPRS", limit: 53
    t.float "PEINH", limit: 53
    t.text "BKLAS", size: :tiny
    t.float "SALKV", limit: 53
    t.float "VMKUM", limit: 53
    t.float "VMSAL", limit: 53
    t.text "VMVPR", size: :tiny
    t.float "VMVER", limit: 53
    t.float "VMSTP", limit: 53
    t.float "VMPEI", limit: 53
    t.text "VMBKL", size: :tiny
    t.float "VMSAV", limit: 53
    t.float "VJKUM", limit: 53
    t.float "VJSAL", limit: 53
    t.text "VJVPR", size: :tiny
    t.float "VJVER", limit: 53
    t.float "VJSTP", limit: 53
    t.float "VJPEI", limit: 53
    t.text "VJBKL", size: :tiny
    t.float "VJSAV", limit: 53
    t.text "LFGJA", size: :tiny
    t.text "LFMON", size: :tiny
    t.text "BWTTY", size: :tiny
    t.float "STPRV", limit: 53
    t.datetime "LAEPR", precision: nil
    t.float "ZKPRS", limit: 53
    t.text "ZKDAT", size: :tiny
    t.datetime "TIMESTAMP", precision: nil
    t.float "BWPRS", limit: 53
    t.float "BWPRH", limit: 53
    t.float "VJBWS", limit: 53
    t.float "VJBWH", limit: 53
    t.float "VVJSL", limit: 53
    t.float "VVJLB", limit: 53
    t.float "VVMLB", limit: 53
    t.float "VVSAL", limit: 53
    t.float "ZPLPR", limit: 53
    t.float "ZPLP1", limit: 53
    t.float "ZPLP2", limit: 53
    t.float "ZPLP3", limit: 53
    t.text "ZPLD1", size: :tiny
    t.text "ZPLD2", size: :tiny
    t.text "ZPLD3", size: :tiny
    t.text "PPERZ", size: :tiny
    t.text "PPERL", size: :tiny
    t.text "PPERV", size: :tiny
    t.text "KALKZ", size: :tiny
    t.text "KALKL", size: :tiny
    t.text "KALKV", size: :tiny
    t.text "KALSC", size: :tiny
    t.text "XLIFO", size: :tiny
    t.text "MYPOL", size: :tiny
    t.float "BWPH1", limit: 53
    t.float "BWPS1", limit: 53
    t.text "ABWKZ", size: :tiny
    t.text "PSTAT", size: :tiny
    t.text "KALN1", size: :tiny
    t.text "KALNR", size: :tiny
    t.text "BWVA1", size: :tiny
    t.text "BWVA2", size: :tiny
    t.text "BWVA3", size: :tiny
    t.text "VERS1", size: :tiny
    t.text "VERS2", size: :tiny
    t.text "VERS3", size: :tiny
    t.text "HRKFT", size: :tiny
    t.text "KOSGR", size: :tiny
    t.text "PPRDZ", size: :tiny
    t.text "PPRDL", size: :tiny
    t.text "PPRDV", size: :tiny
    t.text "PDATZ", size: :tiny
    t.text "PDATL", size: :tiny
    t.text "PDATV", size: :tiny
    t.text "EKALR", size: :tiny
    t.float "VPLPR", limit: 53
    t.text "MLMAA", size: :tiny
    t.text "MLAST", size: :tiny
    t.float "LPLPR", limit: 53
    t.float "VKSAL", limit: 53
    t.text "HKMAT", size: :tiny
    t.text "SPERW", size: :tiny
    t.text "KZIWL", size: :tiny
    t.text "WLINL", size: :tiny
    t.text "ABCIW", size: :tiny
    t.float "BWSPA", limit: 53
    t.float "LPLPX", limit: 53
    t.float "VPLPX", limit: 53
    t.float "FPLPX", limit: 53
    t.text "LBWST", size: :tiny
    t.text "VBWST", size: :tiny
    t.text "FBWST", size: :tiny
    t.text "EKLAS", size: :tiny
    t.text "QKLAS", size: :tiny
    t.text "MTUSE", size: :tiny
    t.text "MTORG", size: :tiny
    t.text "OWNPR", size: :tiny
    t.text "XBEWM", size: :tiny
    t.float "BWPEI", limit: 53
    t.text "MBRUE", size: :tiny
    t.text "OKLAS", size: :tiny
    t.text "OIPPINV", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MBEW_G", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "BWKEY", size: :tiny
    t.text "BWTAR", size: :tiny
    t.text "LVORM", size: :tiny
    t.float "LBKUM", limit: 53
    t.float "SALK3", limit: 53
    t.text "VPRSV", size: :tiny
    t.float "VERPR", limit: 53
    t.float "STPRS", limit: 53
    t.float "PEINH", limit: 53
    t.text "BKLAS", size: :tiny
    t.float "SALKV", limit: 53
    t.float "VMKUM", limit: 53
    t.float "VMSAL", limit: 53
    t.text "VMVPR", size: :tiny
    t.float "VMVER", limit: 53
    t.float "VMSTP", limit: 53
    t.float "VMPEI", limit: 53
    t.text "VMBKL", size: :tiny
    t.float "VMSAV", limit: 53
    t.float "VJKUM", limit: 53
    t.float "VJSAL", limit: 53
    t.text "VJVPR", size: :tiny
    t.float "VJVER", limit: 53
    t.float "VJSTP", limit: 53
    t.float "VJPEI", limit: 53
    t.text "VJBKL", size: :tiny
    t.float "VJSAV", limit: 53
    t.text "LFGJA", size: :tiny
    t.text "LFMON", size: :tiny
    t.text "BWTTY", size: :tiny
    t.float "STPRV", limit: 53
    t.text "LAEPR", size: :tiny
    t.float "ZKPRS", limit: 53
    t.text "ZKDAT", size: :tiny
    t.datetime "TIMESTAMP", precision: nil
    t.float "BWPRS", limit: 53
    t.float "BWPRH", limit: 53
    t.float "VJBWS", limit: 53
    t.float "VJBWH", limit: 53
    t.float "VVJSL", limit: 53
    t.float "VVJLB", limit: 53
    t.float "VVMLB", limit: 53
    t.float "VVSAL", limit: 53
    t.float "ZPLPR", limit: 53
    t.float "ZPLP1", limit: 53
    t.float "ZPLP2", limit: 53
    t.float "ZPLP3", limit: 53
    t.text "ZPLD1", size: :tiny
    t.text "ZPLD2", size: :tiny
    t.text "ZPLD3", size: :tiny
    t.text "PPERZ", size: :tiny
    t.text "PPERL", size: :tiny
    t.text "PPERV", size: :tiny
    t.text "KALKZ", size: :tiny
    t.text "KALKL", size: :tiny
    t.text "KALKV", size: :tiny
    t.text "KALSC", size: :tiny
    t.text "XLIFO", size: :tiny
    t.text "MYPOL", size: :tiny
    t.float "BWPH1", limit: 53
    t.float "BWPS1", limit: 53
    t.text "ABWKZ", size: :tiny
    t.text "PSTAT", size: :tiny
    t.text "KALN1", size: :tiny
    t.text "KALNR", size: :tiny
    t.text "BWVA1", size: :tiny
    t.text "BWVA2", size: :tiny
    t.text "BWVA3", size: :tiny
    t.text "VERS1", size: :tiny
    t.text "VERS2", size: :tiny
    t.text "VERS3", size: :tiny
    t.text "HRKFT", size: :tiny
    t.text "KOSGR", size: :tiny
    t.text "PPRDZ", size: :tiny
    t.text "PPRDL", size: :tiny
    t.text "PPRDV", size: :tiny
    t.text "PDATZ", size: :tiny
    t.text "PDATL", size: :tiny
    t.text "PDATV", size: :tiny
    t.text "EKALR", size: :tiny
    t.float "VPLPR", limit: 53
    t.text "MLMAA", size: :tiny
    t.text "MLAST", size: :tiny
    t.float "LPLPR", limit: 53
    t.float "VKSAL", limit: 53
    t.text "HKMAT", size: :tiny
    t.text "SPERW", size: :tiny
    t.text "KZIWL", size: :tiny
    t.text "WLINL", size: :tiny
    t.text "ABCIW", size: :tiny
    t.float "BWSPA", limit: 53
    t.float "LPLPX", limit: 53
    t.float "VPLPX", limit: 53
    t.float "FPLPX", limit: 53
    t.text "LBWST", size: :tiny
    t.text "VBWST", size: :tiny
    t.text "FBWST", size: :tiny
    t.text "EKLAS", size: :tiny
    t.text "QKLAS", size: :tiny
    t.text "MTUSE", size: :tiny
    t.text "MTORG", size: :tiny
    t.text "OWNPR", size: :tiny
    t.text "XBEWM", size: :tiny
    t.float "BWPEI", limit: 53
    t.text "MBRUE", size: :tiny
    t.text "OKLAS", size: :tiny
    t.text "DUMMY_VAL_INCL_EEW_PS", size: :tiny
    t.text "OIPPINV", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MBEW_M", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "BWKEY", size: :tiny
    t.text "BWTAR", size: :tiny
    t.text "LVORM", size: :tiny
    t.float "LBKUM", limit: 53
    t.float "SALK3", limit: 53
    t.text "VPRSV", size: :tiny
    t.float "VERPR", limit: 53
    t.float "STPRS", limit: 53
    t.float "PEINH", limit: 53
    t.text "BKLAS", size: :tiny
    t.float "SALKV", limit: 53
    t.float "VMKUM", limit: 53
    t.float "VMSAL", limit: 53
    t.text "VMVPR", size: :tiny
    t.float "VMVER", limit: 53
    t.float "VMSTP", limit: 53
    t.float "VMPEI", limit: 53
    t.text "VMBKL", size: :tiny
    t.float "VMSAV", limit: 53
    t.float "VJKUM", limit: 53
    t.float "VJSAL", limit: 53
    t.text "VJVPR", size: :tiny
    t.float "VJVER", limit: 53
    t.float "VJSTP", limit: 53
    t.float "VJPEI", limit: 53
    t.text "VJBKL", size: :tiny
    t.float "VJSAV", limit: 53
    t.text "LFGJA", size: :tiny
    t.text "LFMON", size: :tiny
    t.text "BWTTY", size: :tiny
    t.float "STPRV", limit: 53
    t.text "LAEPR", size: :tiny
    t.float "ZKPRS", limit: 53
    t.text "ZKDAT", size: :tiny
    t.datetime "TIMESTAMP", precision: nil
    t.float "BWPRS", limit: 53
    t.float "BWPRH", limit: 53
    t.float "VJBWS", limit: 53
    t.float "VJBWH", limit: 53
    t.float "VVJSL", limit: 53
    t.float "VVJLB", limit: 53
    t.float "VVMLB", limit: 53
    t.float "VVSAL", limit: 53
    t.float "ZPLPR", limit: 53
    t.float "ZPLP1", limit: 53
    t.float "ZPLP2", limit: 53
    t.float "ZPLP3", limit: 53
    t.text "ZPLD1", size: :tiny
    t.text "ZPLD2", size: :tiny
    t.text "ZPLD3", size: :tiny
    t.text "PPERZ", size: :tiny
    t.text "PPERL", size: :tiny
    t.text "PPERV", size: :tiny
    t.text "KALKZ", size: :tiny
    t.text "KALKL", size: :tiny
    t.text "KALKV", size: :tiny
    t.text "KALSC", size: :tiny
    t.text "XLIFO", size: :tiny
    t.text "MYPOL", size: :tiny
    t.float "BWPH1", limit: 53
    t.float "BWPS1", limit: 53
    t.text "ABWKZ", size: :tiny
    t.text "PSTAT", size: :tiny
    t.text "KALN1", size: :tiny
    t.text "KALNR", size: :tiny
    t.text "BWVA1", size: :tiny
    t.text "BWVA2", size: :tiny
    t.text "BWVA3", size: :tiny
    t.text "VERS1", size: :tiny
    t.text "VERS2", size: :tiny
    t.text "VERS3", size: :tiny
    t.text "HRKFT", size: :tiny
    t.text "KOSGR", size: :tiny
    t.text "PPRDZ", size: :tiny
    t.text "PPRDL", size: :tiny
    t.text "PPRDV", size: :tiny
    t.text "PDATZ", size: :tiny
    t.text "PDATL", size: :tiny
    t.text "PDATV", size: :tiny
    t.text "EKALR", size: :tiny
    t.float "VPLPR", limit: 53
    t.text "MLMAA", size: :tiny
    t.text "MLAST", size: :tiny
    t.float "LPLPR", limit: 53
    t.float "VKSAL", limit: 53
    t.text "HKMAT", size: :tiny
    t.text "SPERW", size: :tiny
    t.text "KZIWL", size: :tiny
    t.text "WLINL", size: :tiny
    t.text "ABCIW", size: :tiny
    t.float "BWSPA", limit: 53
    t.float "LPLPX", limit: 53
    t.float "VPLPX", limit: 53
    t.float "FPLPX", limit: 53
    t.text "LBWST", size: :tiny
    t.text "VBWST", size: :tiny
    t.text "FBWST", size: :tiny
    t.text "EKLAS", size: :tiny
    t.text "QKLAS", size: :tiny
    t.text "MTUSE", size: :tiny
    t.text "MTORG", size: :tiny
    t.text "OWNPR", size: :tiny
    t.text "XBEWM", size: :tiny
    t.float "BWPEI", limit: 53
    t.text "MBRUE", size: :tiny
    t.text "OKLAS", size: :tiny
    t.text "OIPPINV", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MEAN_B", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "MEINH", size: :tiny
    t.text "LFNUM", size: :tiny
    t.text "EAN11", size: :tiny
    t.text "EANTP", size: :tiny
    t.text "HPEAN", size: :tiny
    t.text "SGT_CATV", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MEAN_B_FLAT", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.string "MATNR"
    t.string "EA_EAN11"
    t.string "CS_EAN11"
    t.string "LAY_EAN11"
    t.string "PAK_EAN11"
    t.string "PAL_EAN11"
  end

  create_table "MEAN_G", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "MEINH", size: :tiny
    t.text "LFNUM", size: :tiny
    t.text "EAN11", size: :tiny
    t.text "EANTP", size: :tiny
    t.text "HPEAN", size: :tiny
    t.text "SGT_CATV", size: :tiny
    t.text "/STTPEC/SER_GTIN", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MEAN_GD_NEW", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.string "MANDT", limit: 18
    t.string "MATNR", limit: 33
    t.string "MEINH", limit: 18
    t.string "LFNUM", limit: 20
    t.string "EAN11", limit: 33
    t.string "EANTP", limit: 17
    t.string "HPEAN", limit: 16
    t.date "load_date"
    t.string "source", limit: 2
  end

  create_table "MEAN_G_FLAT", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.string "MATNR"
    t.string "EA_EAN11"
    t.string "SW_EAN11"
  end

  create_table "MEAN_M", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "MEINH", size: :tiny
    t.text "LFNUM", size: :tiny
    t.text "EAN11", size: :tiny
    t.text "EANTP", size: :tiny
    t.text "HPEAN", size: :tiny
    t.text "SGT_CATV", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MEAN_M_FLAT", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.string "MATNR"
    t.string "EA_EAN11"
    t.string "CS_EAN11"
    t.string "PK_EAN11"
    t.string "SW_EAN11"
    t.string "BOX_EAN11"
  end

  create_table "MLAN_B", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "ALAND", size: :tiny
    t.text "TAXM1", size: :tiny
    t.text "TAXM2", size: :tiny
    t.text "TAXM3", size: :tiny
    t.text "TAXM4", size: :tiny
    t.text "TAXM5", size: :tiny
    t.text "TAXM6", size: :tiny
    t.text "TAXM7", size: :tiny
    t.text "TAXM8", size: :tiny
    t.text "TAXM9", size: :tiny
    t.text "TAXIM", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MLAN_G", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "ALAND", size: :tiny
    t.text "TAXM1", size: :tiny
    t.text "TAXM2", size: :tiny
    t.text "TAXM3", size: :tiny
    t.text "TAXM4", size: :tiny
    t.text "TAXM5", size: :tiny
    t.text "TAXM6", size: :tiny
    t.text "TAXM7", size: :tiny
    t.text "TAXM8", size: :tiny
    t.text "TAXM9", size: :tiny
    t.text "TAXIM", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MLAN_M", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "ALAND", size: :tiny
    t.text "TAXM1", size: :tiny
    t.text "TAXM2", size: :tiny
    t.text "TAXM3", size: :tiny
    t.text "TAXM4", size: :tiny
    t.text "TAXM5", size: :tiny
    t.text "TAXM6", size: :tiny
    t.text "TAXM7", size: :tiny
    t.text "TAXM8", size: :tiny
    t.text "TAXM9", size: :tiny
    t.text "TAXIM", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MLGN_B", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "LGNUM", size: :tiny
    t.text "LVORM", size: :tiny
    t.text "LGBKZ", size: :tiny
    t.text "LTKZE", size: :tiny
    t.text "LTKZA", size: :tiny
    t.float "LHMG1", limit: 53
    t.float "LHMG2", limit: 53
    t.float "LHMG3", limit: 53
    t.text "LHME1", size: :tiny
    t.text "LHME2", size: :tiny
    t.text "LHME3", size: :tiny
    t.text "LETY1", size: :tiny
    t.text "LETY2", size: :tiny
    t.text "LETY3", size: :tiny
    t.text "LVSME", size: :tiny
    t.text "KZZUL", size: :tiny
    t.text "BLOCK", size: :tiny
    t.text "KZMBF", size: :tiny
    t.text "BSSKZ", size: :tiny
    t.float "MKAPV", limit: 53
    t.text "BEZME", size: :tiny
    t.text "PLKPT", size: :tiny
    t.text "VOMEM", size: :tiny
    t.text "L2SKR", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MLGN_M", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "LGNUM", size: :tiny
    t.text "LVORM", size: :tiny
    t.text "LGBKZ", size: :tiny
    t.text "LTKZE", size: :tiny
    t.text "LTKZA", size: :tiny
    t.float "LHMG1", limit: 53
    t.float "LHMG2", limit: 53
    t.float "LHMG3", limit: 53
    t.text "LHME1", size: :tiny
    t.text "LHME2", size: :tiny
    t.text "LHME3", size: :tiny
    t.text "LETY1", size: :tiny
    t.text "LETY2", size: :tiny
    t.text "LETY3", size: :tiny
    t.text "LVSME", size: :tiny
    t.text "KZZUL", size: :tiny
    t.text "BLOCK", size: :tiny
    t.text "KZMBF", size: :tiny
    t.text "BSSKZ", size: :tiny
    t.float "MKAPV", limit: 53
    t.text "BEZME", size: :tiny
    t.text "PLKPT", size: :tiny
    t.text "VOMEM", size: :tiny
    t.text "L2SKR", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MVKE_B", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "VKORG", size: :tiny
    t.text "VTWEG", size: :tiny
    t.text "LVORM", size: :tiny
    t.text "VERSG", size: :tiny
    t.text "BONUS", size: :tiny
    t.text "PROVG", size: :tiny
    t.text "SKTOF", size: :tiny
    t.text "VMSTA", size: :tiny
    t.text "VMSTD", size: :tiny
    t.float "AUMNG", limit: 53
    t.float "LFMNG", limit: 53
    t.float "EFMNG", limit: 53
    t.float "SCMNG", limit: 53
    t.text "SCHME", size: :tiny
    t.text "VRKME", size: :tiny
    t.text "MTPOS", size: :tiny
    t.text "DWERK", size: :tiny
    t.text "PRODH", size: :tiny
    t.text "PMATN", size: :tiny
    t.text "KONDM", size: :tiny
    t.text "KTGRM", size: :tiny
    t.text "MVGR1", size: :tiny
    t.text "MVGR2", size: :tiny
    t.text "MVGR3", size: :tiny
    t.text "MVGR4", size: :tiny
    t.text "MVGR5", size: :tiny
    t.text "SSTUF", size: :tiny
    t.text "PFLKS", size: :tiny
    t.text "LSTFL", size: :tiny
    t.text "LSTVZ", size: :tiny
    t.text "LSTAK", size: :tiny
    t.datetime "LDVFL", precision: nil
    t.datetime "LDBFL", precision: nil
    t.datetime "LDVZL", precision: nil
    t.datetime "LDBZL", precision: nil
    t.datetime "VDVFL", precision: nil
    t.datetime "VDBFL", precision: nil
    t.datetime "VDVZL", precision: nil
    t.datetime "VDBZL", precision: nil
    t.text "PRAT1", size: :tiny
    t.text "PRAT2", size: :tiny
    t.text "PRAT3", size: :tiny
    t.text "PRAT4", size: :tiny
    t.text "PRAT5", size: :tiny
    t.text "PRAT6", size: :tiny
    t.text "PRAT7", size: :tiny
    t.text "PRAT8", size: :tiny
    t.text "PRAT9", size: :tiny
    t.text "PRATA", size: :tiny
    t.text "RDPRF", size: :tiny
    t.text "MEGRU", size: :tiny
    t.float "LFMAX", limit: 53
    t.text "RJART", size: :tiny
    t.text "PBIND", size: :tiny
    t.text "VAVME", size: :tiny
    t.text "MATKC", size: :tiny
    t.text "PVMSO", size: :tiny
    t.text "/BEV1/EMLGRP", size: :tiny
    t.text "/BEV1/EMDRCKSPL", size: :tiny
    t.text "/BEV1/RPBEZME", size: :tiny
    t.text "/BEV1/RPSNS", size: :tiny
    t.text "/BEV1/RPSFA", size: :tiny
    t.text "/BEV1/RPSKI", size: :tiny
    t.text "/BEV1/RPSCO", size: :tiny
    t.text "/BEV1/RPSSO", size: :tiny
    t.text "PLGTP", size: :tiny
    t.text "ZZPRSTR", size: :tiny
    t.text "ZZONLSHP", size: :tiny
    t.text "ZZDLVTY", size: :tiny
    t.text "ZZVASPOS", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MVKE_G", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "VKORG", size: :tiny
    t.text "VTWEG", size: :tiny
    t.text "LVORM", size: :tiny
    t.text "VERSG", size: :tiny
    t.text "BONUS", size: :tiny
    t.text "PROVG", size: :tiny
    t.text "SKTOF", size: :tiny
    t.text "VMSTA", size: :tiny
    t.text "VMSTD", size: :tiny
    t.float "AUMNG", limit: 53
    t.float "LFMNG", limit: 53
    t.float "EFMNG", limit: 53
    t.float "SCMNG", limit: 53
    t.text "SCHME", size: :tiny
    t.text "VRKME", size: :tiny
    t.text "MTPOS", size: :tiny
    t.text "DWERK", size: :tiny
    t.text "PRODH", size: :tiny
    t.text "PMATN", size: :tiny
    t.text "KONDM", size: :tiny
    t.text "KTGRM", size: :tiny
    t.text "MVGR1", size: :tiny
    t.text "MVGR2", size: :tiny
    t.text "MVGR3", size: :tiny
    t.text "MVGR4", size: :tiny
    t.text "MVGR5", size: :tiny
    t.text "SSTUF", size: :tiny
    t.text "PFLKS", size: :tiny
    t.text "LSTFL", size: :tiny
    t.text "LSTVZ", size: :tiny
    t.text "LSTAK", size: :tiny
    t.datetime "LDVFL", precision: nil
    t.datetime "LDBFL", precision: nil
    t.datetime "LDVZL", precision: nil
    t.datetime "LDBZL", precision: nil
    t.datetime "VDVFL", precision: nil
    t.datetime "VDBFL", precision: nil
    t.datetime "VDVZL", precision: nil
    t.datetime "VDBZL", precision: nil
    t.text "PRAT1", size: :tiny
    t.text "PRAT2", size: :tiny
    t.text "PRAT3", size: :tiny
    t.text "PRAT4", size: :tiny
    t.text "PRAT5", size: :tiny
    t.text "PRAT6", size: :tiny
    t.text "PRAT7", size: :tiny
    t.text "PRAT8", size: :tiny
    t.text "PRAT9", size: :tiny
    t.text "PRATA", size: :tiny
    t.text "RDPRF", size: :tiny
    t.text "MEGRU", size: :tiny
    t.float "LFMAX", limit: 53
    t.text "RJART", size: :tiny
    t.text "PBIND", size: :tiny
    t.text "VAVME", size: :tiny
    t.text "MATKC", size: :tiny
    t.text "PVMSO", size: :tiny
    t.text "DUMMY_SALD_INCL_EEW_PS", size: :tiny
    t.text "/BEV1/EMLGRP", size: :tiny
    t.text "/BEV1/EMDRCKSPL", size: :tiny
    t.text "/BEV1/RPBEZME", size: :tiny
    t.text "/BEV1/RPSNS", size: :tiny
    t.text "/BEV1/RPSFA", size: :tiny
    t.text "/BEV1/RPSKI", size: :tiny
    t.text "/BEV1/RPSCO", size: :tiny
    t.text "/BEV1/RPSSO", size: :tiny
    t.text "NF_FLAG", size: :tiny
    t.text "PLGTP", size: :tiny
    t.text "ZZWEB_FLAG", size: :tiny
    t.text "ZZSALE_EXL", size: :tiny
    t.text "ZZWARRANTY_ART", size: :tiny
    t.text "ZZWARRANTE_ART", size: :tiny
    t.text "ZZKVI", size: :tiny
    t.text "ZZNBO", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "MVKE_M", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "VKORG", size: :tiny
    t.text "VTWEG", size: :tiny
    t.text "LVORM", size: :tiny
    t.text "VERSG", size: :tiny
    t.text "BONUS", size: :tiny
    t.text "PROVG", size: :tiny
    t.text "SKTOF", size: :tiny
    t.text "VMSTA", size: :tiny
    t.text "VMSTD", size: :tiny
    t.float "AUMNG", limit: 53
    t.float "LFMNG", limit: 53
    t.float "EFMNG", limit: 53
    t.float "SCMNG", limit: 53
    t.text "SCHME", size: :tiny
    t.text "VRKME", size: :tiny
    t.text "MTPOS", size: :tiny
    t.text "DWERK", size: :tiny
    t.text "PRODH", size: :tiny
    t.text "PMATN", size: :tiny
    t.text "KONDM", size: :tiny
    t.text "KTGRM", size: :tiny
    t.text "MVGR1", size: :tiny
    t.text "MVGR2", size: :tiny
    t.text "MVGR3", size: :tiny
    t.text "MVGR4", size: :tiny
    t.text "MVGR5", size: :tiny
    t.text "SSTUF", size: :tiny
    t.text "PFLKS", size: :tiny
    t.text "LSTFL", size: :tiny
    t.text "LSTVZ", size: :tiny
    t.text "LSTAK", size: :tiny
    t.datetime "LDVFL", precision: nil
    t.datetime "LDBFL", precision: nil
    t.datetime "LDVZL", precision: nil
    t.datetime "LDBZL", precision: nil
    t.datetime "VDVFL", precision: nil
    t.datetime "VDBFL", precision: nil
    t.datetime "VDVZL", precision: nil
    t.datetime "VDBZL", precision: nil
    t.text "PRAT1", size: :tiny
    t.text "PRAT2", size: :tiny
    t.text "PRAT3", size: :tiny
    t.text "PRAT4", size: :tiny
    t.text "PRAT5", size: :tiny
    t.text "PRAT6", size: :tiny
    t.text "PRAT7", size: :tiny
    t.text "PRAT8", size: :tiny
    t.text "PRAT9", size: :tiny
    t.text "PRATA", size: :tiny
    t.text "RDPRF", size: :tiny
    t.text "MEGRU", size: :tiny
    t.float "LFMAX", limit: 53
    t.text "RJART", size: :tiny
    t.text "PBIND", size: :tiny
    t.text "VAVME", size: :tiny
    t.text "MATKC", size: :tiny
    t.text "PVMSO", size: :tiny
    t.text "/BEV1/EMLGRP", size: :tiny
    t.text "/BEV1/EMDRCKSPL", size: :tiny
    t.text "/BEV1/RPBEZME", size: :tiny
    t.text "/BEV1/RPSNS", size: :tiny
    t.text "/BEV1/RPSFA", size: :tiny
    t.text "/BEV1/RPSKI", size: :tiny
    t.text "/BEV1/RPSCO", size: :tiny
    t.text "/BEV1/RPSSO", size: :tiny
    t.text "PLGTP", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "WLK2_B", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "VKORG", size: :tiny
    t.text "VTWEG", size: :tiny
    t.text "WERKS", size: :tiny
    t.datetime "DATAE", precision: nil
    t.text "AENAM", size: :tiny
    t.text "KWDHT", size: :tiny
    t.text "PRERF", size: :tiny
    t.datetime "VKDAB", precision: nil
    t.datetime "VKBIS", precision: nil
    t.text "MSTAV", size: :tiny
    t.text "MSTDV", size: :tiny
    t.text "RBZUL", size: :tiny
    t.text "SCAGR", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "WLK2_G", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "VKORG", size: :tiny
    t.text "VTWEG", size: :tiny
    t.text "WERKS", size: :tiny
    t.datetime "DATAE", precision: nil
    t.text "AENAM", size: :tiny
    t.text "KWDHT", size: :tiny
    t.text "PRERF", size: :tiny
    t.datetime "VKDAB", precision: nil
    t.datetime "VKBIS", precision: nil
    t.text "MSTAV", size: :tiny
    t.text "MSTDV", size: :tiny
    t.text "RBZUL", size: :tiny
    t.text "SCAGR", size: :tiny
    t.text "ZZPOS_INFO_1", size: :tiny
    t.text "ZZPOS_INFO_2", size: :tiny
    t.text "ZZPOS_INFO_3", size: :tiny
    t.text "ZZPOS_INFO_4", size: :tiny
    t.text "ZZPOS_INFO_5", size: :tiny
    t.text "ZZPOS_INFO_6", size: :tiny
    t.text "ZZPOS_INFO_7", size: :tiny
    t.text "ZZPOS_INFO_8", size: :tiny
    t.text "ZZPOS_INFO_9", size: :tiny
    t.text "ZZPOS_INFO_10", size: :tiny
    t.text "ZZPOS_INFO_11", size: :tiny
    t.text "ZZPOS_INFO_12", size: :tiny
    t.text "ZZPOS_INFO_13", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

  create_table "WLK2_M", id: false, charset: "utf8mb4", force: :cascade do |t|
    t.text "MATNR", size: :tiny
    t.text "VKORG", size: :tiny
    t.text "VTWEG", size: :tiny
    t.text "WERKS", size: :tiny
    t.datetime "DATAE", precision: nil
    t.text "AENAM", size: :tiny
    t.text "KWDHT", size: :tiny
    t.text "PRERF", size: :tiny
    t.datetime "VKDAB", precision: nil
    t.datetime "VKBIS", precision: nil
    t.text "MSTAV", size: :tiny
    t.text "MSTDV", size: :tiny
    t.text "RBZUL", size: :tiny
    t.text "SCAGR", size: :tiny
    t.text "ZZCLASS", size: :tiny
    t.text "ZZFINCH", size: :tiny
    t.text "ZZFINMONTH", size: :tiny
    t.text "ZZFINDEP", size: :tiny
    t.text "ZZSPTYP", size: :tiny
    t.text "ZZCDIND", size: :tiny
    t.text "ZZLNUM", size: :tiny
    t.text "ZZREPL", size: :tiny
    t.text "ZZCORE", size: :tiny
    t.text "source", size: :tiny
    t.datetime "load_date", precision: nil
  end

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

  create_table "gd_test_table", id: { type: :integer, unsigned: true }, charset: "utf8mb4", force: :cascade do |t|
    t.text "name"
    t.text "email"
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
