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

ActiveRecord::Schema.define(:version => 0) do

  create_table "Acc_01", :id => false, :force => true do |t|
    t.string   "CiaId",              :limit => 4,                                 :null => false
    t.integer  "AccID",              :limit => 10,                                :null => false
    t.integer  "AccionistasID",      :limit => 10
    t.integer  "Estado",             :limit => 3,                                 :null => false
    t.string   "Nombre_DL",          :limit => 70
    t.string   "Personeria_DL",      :limit => 15
    t.string   "Datos_DL",           :limit => 70
    t.string   "Inversor_DL",        :limit => 20
    t.string   "CUIT_DL",            :limit => 13
    t.string   "Tipo_Doc",           :limit => 10
    t.decimal  "Numero_Doc",                       :precision => 18, :scale => 0
    t.string   "Domicilio_DL",       :limit => 70
    t.string   "Localidad_DL",       :limit => 70
    t.string   "CP_DL",              :limit => 10
    t.datetime "Fecha_Suscripcion",  :limit => 23
    t.decimal  "Valor_Titulo",                     :precision => 18, :scale => 2
    t.string   "Serie_Titulo_DL",    :limit => 10
    t.string   "Numero_Titulo_DL",   :limit => 60
    t.string   "Cant_Acciones",      :limit => 60
    t.decimal  "Cant_Acciones_Susc",               :precision => 18, :scale => 0
    t.decimal  "Participacion",                    :precision => 18, :scale => 2
    t.string   "Folio",              :limit => 60
    t.string   "Usrname",            :limit => 20
    t.datetime "Fecha_Creacion",     :limit => 23
    t.decimal  "csuscripto",                       :precision => 18, :scale => 2
    t.decimal  "cintegrado",                       :precision => 18, :scale => 2
  end

  create_table "Accionistas", :id => false, :force => true do |t|
    t.string   "CiaId",              :limit => 4,                                 :null => false
    t.integer  "AccID",              :limit => 10,                                :null => false
    t.integer  "AccionistasID",      :limit => 10
    t.integer  "Estado",             :limit => 3,                                 :null => false
    t.string   "Nombre_DL",          :limit => 70
    t.string   "Personeria_DL",      :limit => 15
    t.string   "Datos_DL",           :limit => 70
    t.string   "Inversor_DL",        :limit => 20
    t.string   "CUIT_DL",            :limit => 13
    t.string   "Tipo_Doc",           :limit => 10
    t.decimal  "Numero_Doc",                       :precision => 18, :scale => 0
    t.string   "Domicilio_DL",       :limit => 70
    t.string   "Localidad_DL",       :limit => 70
    t.string   "CP_DL",              :limit => 10
    t.datetime "Fecha_Suscripcion",  :limit => 23
    t.decimal  "Valor_Titulo",                     :precision => 18, :scale => 2
    t.string   "Serie_Titulo_DL",    :limit => 10
    t.string   "Numero_Titulo_DL",   :limit => 60
    t.string   "Cant_Acciones",      :limit => 60
    t.decimal  "Cant_Acciones_Susc",               :precision => 18, :scale => 0
    t.decimal  "Participacion",                    :precision => 18, :scale => 2
    t.string   "Folio",              :limit => 60
    t.string   "Usrname",            :limit => 20
    t.datetime "Fecha_Creacion",     :limit => 23
    t.decimal  "csuscripto",                       :precision => 18, :scale => 0
    t.decimal  "cintegrado",                       :precision => 18, :scale => 0
  end

  create_table "Accionistas_internet", :id => false, :force => true do |t|
    t.string  "CiaID",              :limit => 4,                                 :null => false
    t.integer "AccID",              :limit => 10,                                :null => false
    t.integer "AccionistasID",      :limit => 10
    t.string  "Nombre_DL",          :limit => 70
    t.decimal "Cant_Acciones_Susc",               :precision => 18, :scale => 0
    t.decimal "Participacion",                    :precision => 18, :scale => 2
  end

  create_table "Actividad1", :id => false, :force => true do |t|
    t.integer "ActId",        :limit => 3,  :null => false
    t.string  "Denominacion", :limit => 20, :null => false
    t.string  "Codigo_ant",   :limit => 3
  end

  create_table "Actividad2", :id => false, :force => true do |t|
    t.integer "ActId",        :limit => 3,  :null => false
    t.string  "Denominacion", :limit => 20, :null => false
    t.string  "Codigo_ant",   :limit => 3
  end

  create_table "ActosDeDesignacion", :primary_key => "ActoDesigID", :force => true do |t|
    t.string "ActoDesigDenominacion", :limit => 100, :null => false
  end

  create_table "App_Logg", :id => false, :force => true do |t|
    t.string   "strAplicacionID", :limit => 10,  :null => false
    t.string   "strOperacion",    :limit => 100, :null => false
    t.string   "strUsuarioID",    :limit => 10,  :null => false
    t.datetime "datFechaMov",     :limit => 23,  :null => false
  end

  create_table "Asambleas", :id => false, :force => true do |t|
    t.integer  "intAsambleaID",       :limit => 10, :null => false
    t.string   "strPresentacionID",   :limit => 1,  :null => false
    t.string   "strEntidadID",        :limit => 4,  :null => false
    t.integer  "intAsambleaNro",      :limit => 10, :null => false
    t.datetime "datFecha",            :limit => 23, :null => false
    t.string   "strTipoAsamblea",     :limit => 1,  :null => false
    t.datetime "datConfirmado",       :limit => 23
    t.integer  "intUsuarioID",        :limit => 10, :null => false
    t.datetime "datInstante",         :limit => 23, :null => false
    t.integer  "intUsrVerificadoID",  :limit => 10
    t.string   "strEstado",           :limit => 1
    t.datetime "datVerificado",       :limit => 23
    t.integer  "intTramiteSETRA",     :limit => 10
    t.string   "strAnioTramiteSETRA", :limit => 4
    t.string   "strCodVerificacion",  :limit => 10
  end

  create_table "AsambleasAccionistas", :id => false, :force => true do |t|
    t.string  "strEntidadID",        :limit => 4,                                  :null => false
    t.integer "intAsambleaID",       :limit => 10,                                 :null => false
    t.string  "strRazonSocial",      :limit => 140,                                :null => false
    t.string  "strPersoneriaID",     :limit => 1,                                  :null => false
    t.string  "strDocumentoID",      :limit => 4,                                  :null => false
    t.integer "intDocumentoNro",     :limit => 10,                                 :null => false
    t.string  "strCalle",            :limit => 100,                                :null => false
    t.integer "intCalleNro",         :limit => 10,                                 :null => false
    t.string  "strCP",               :limit => 8,                                  :null => false
    t.string  "strLocalidad",        :limit => 50,                                 :null => false
    t.string  "strProvincia",        :limit => 20
    t.integer "intPais",             :limit => 10,                                 :null => false
    t.string  "strCUIT",             :limit => 11,                                 :null => false
    t.string  "strSerie",            :limit => 10
    t.decimal "decAccionesSusc",                    :precision => 18, :scale => 0
    t.decimal "decParticipacion",                   :precision => 6,  :scale => 2
    t.decimal "decCapitalSuscripto",                :precision => 18, :scale => 0
    t.decimal "decCapitalIntegrado",                :precision => 18, :scale => 0
    t.integer "intVotos",            :limit => 10
    t.decimal "decDomCoordX",                       :precision => 10, :scale => 4
    t.decimal "decDomCoordY",                       :precision => 10, :scale => 4
  end

  create_table "AsambleasAccionistas_log", :id => false, :force => true do |t|
    t.string  "strEntidadID",        :limit => 4,                                  :null => false
    t.integer "intAsambleaID",       :limit => 10,                                 :null => false
    t.string  "strRazonSocial",      :limit => 140,                                :null => false
    t.string  "strPersoneriaID",     :limit => 1,                                  :null => false
    t.string  "strDocumentoID",      :limit => 4,                                  :null => false
    t.integer "intDocumentoNro",     :limit => 10,                                 :null => false
    t.string  "strCalle",            :limit => 100,                                :null => false
    t.integer "intCalleNro",         :limit => 10,                                 :null => false
    t.string  "strCP",               :limit => 8,                                  :null => false
    t.string  "strLocalidad",        :limit => 50,                                 :null => false
    t.string  "strProvincia",        :limit => 20
    t.integer "intPais",             :limit => 10,                                 :null => false
    t.string  "strCUIT",             :limit => 11,                                 :null => false
    t.string  "strSerie",            :limit => 10
    t.decimal "decAccionesSusc",                    :precision => 18, :scale => 0
    t.decimal "decParticipacion",                   :precision => 6,  :scale => 2
    t.decimal "decCapitalSuscripto",                :precision => 18, :scale => 0
    t.decimal "decCapitalIntegrado",                :precision => 18, :scale => 0
    t.integer "intVotos",            :limit => 10
    t.decimal "decDomCoordX",                       :precision => 10, :scale => 4
    t.decimal "decDomCoordY",                       :precision => 10, :scale => 4
  end

  create_table "AsambleasDirectores", :id => false, :force => true do |t|
    t.string   "strEntidadID",     :limit => 4,                                  :null => false
    t.integer  "intAsambleaID",    :limit => 10,                                 :null => false
    t.string   "strRazonSocial",   :limit => 140,                                :null => false
    t.integer  "tinFuncionID",     :limit => 3,                                  :null => false
    t.datetime "datFechaDesde",    :limit => 23,                                 :null => false
    t.datetime "datFechaHasta",    :limit => 23,                                 :null => false
    t.integer  "tinPais",          :limit => 3,                                  :null => false
    t.string   "strCUIT",          :limit => 11,                                 :null => false
    t.string   "strDocumentoID",   :limit => 4,                                  :null => false
    t.integer  "intDocumentoNro",  :limit => 10,                                 :null => false
    t.integer  "tinEstadoCivilID", :limit => 3,                                  :null => false
    t.string   "strProfesion",     :limit => 20
    t.datetime "datNacimiento",    :limit => 23
    t.string   "strLugarNac",      :limit => 20
    t.string   "strConyuge",       :limit => 140
    t.string   "strCUILConyuge",   :limit => 11
    t.string   "strPadre",         :limit => 140
    t.string   "strCUILPadre",     :limit => 11
    t.string   "strPadrevive",     :limit => 1
    t.string   "strMadre",         :limit => 140
    t.string   "strCUILMadre",     :limit => 11
    t.string   "strMadrevive",     :limit => 1
    t.string   "strCallePart",     :limit => 100
    t.integer  "intCalleNroPart",  :limit => 10
    t.string   "strCPPart",        :limit => 8
    t.string   "strLocalidadPart", :limit => 50
    t.string   "strProvinciaPart", :limit => 20
    t.string   "strCalleCom",      :limit => 100
    t.integer  "intCalleNroCom",   :limit => 10
    t.string   "strCPCom",         :limit => 8
    t.string   "strLocalidadCom",  :limit => 50
    t.string   "strProvinciaCom",  :limit => 20
    t.decimal  "decDomPartCoordX",                :precision => 10, :scale => 4
    t.decimal  "decDomPartCoordY",                :precision => 10, :scale => 4
    t.decimal  "decDomComCoordX",                 :precision => 10, :scale => 4
    t.decimal  "decDomComCoordY",                 :precision => 10, :scale => 4
  end

  create_table "AsambleasDirectores_log", :id => false, :force => true do |t|
    t.string   "strEntidadID",     :limit => 4,                                  :null => false
    t.integer  "intAsambleaID",    :limit => 10,                                 :null => false
    t.string   "strRazonSocial",   :limit => 140,                                :null => false
    t.integer  "tinFuncionID",     :limit => 3,                                  :null => false
    t.datetime "datFechaDesde",    :limit => 23,                                 :null => false
    t.datetime "datFechaHasta",    :limit => 23,                                 :null => false
    t.integer  "tinPais",          :limit => 3,                                  :null => false
    t.string   "strCUIT",          :limit => 11,                                 :null => false
    t.string   "strDocumentoID",   :limit => 4,                                  :null => false
    t.integer  "intDocumentoNro",  :limit => 10,                                 :null => false
    t.integer  "tinEstadoCivilID", :limit => 3,                                  :null => false
    t.string   "strProfesion",     :limit => 20
    t.datetime "datNacimiento",    :limit => 23
    t.string   "strLugarNac",      :limit => 20
    t.string   "strConyuge",       :limit => 140
    t.string   "strCUILConyuge",   :limit => 11
    t.string   "strPadre",         :limit => 140
    t.string   "strCUILPadre",     :limit => 11
    t.string   "strPadrevive",     :limit => 1
    t.string   "strMadre",         :limit => 140
    t.string   "strCUILMadre",     :limit => 11
    t.string   "strMadrevive",     :limit => 1
    t.string   "strCallePart",     :limit => 100
    t.integer  "intCalleNroPart",  :limit => 10
    t.string   "strCPPart",        :limit => 8
    t.string   "strLocalidadPart", :limit => 50
    t.string   "strProvinciaPart", :limit => 20
    t.string   "strCalleCom",      :limit => 100
    t.integer  "intCalleNroCom",   :limit => 10
    t.string   "strCPCom",         :limit => 8
    t.string   "strLocalidadCom",  :limit => 50
    t.string   "strProvinciaCom",  :limit => 20
    t.decimal  "decDomPartCoordX",                :precision => 10, :scale => 4
    t.decimal  "decDomPartCoordY",                :precision => 10, :scale => 4
    t.decimal  "decDomComCoordX",                 :precision => 10, :scale => 4
    t.decimal  "decDomComCoordY",                 :precision => 10, :scale => 4
  end

  create_table "AsambleasSucursales", :id => false, :force => true do |t|
    t.string   "strEntidadID",    :limit => 4,                                  :null => false
    t.integer  "intAsambleaID",   :limit => 10,                                 :null => false
    t.string   "strSucursal",     :limit => 140,                                :null => false
    t.string   "strCalle",        :limit => 100,                                :null => false
    t.integer  "intCalleNro",     :limit => 10,                                 :null => false
    t.string   "strOficina",      :limit => 10
    t.string   "strCP",           :limit => 8,                                  :null => false
    t.string   "strLocalidad",    :limit => 50,                                 :null => false
    t.string   "strProvincia",    :limit => 20,                                 :null => false
    t.string   "strTelefono",     :limit => 20,                                 :null => false
    t.string   "strFax",          :limit => 20
    t.datetime "datInicio",       :limit => 23,                                 :null => false
    t.string   "strTipoSucursal", :limit => 1
    t.string   "strGerente",      :limit => 140,                                :null => false
    t.string   "strCUIT",         :limit => 11
    t.string   "strTipoDoc",      :limit => 1,                                  :null => false
    t.integer  "intNroDocumento", :limit => 10,                                 :null => false
    t.datetime "datDocumento",    :limit => 23,                                 :null => false
    t.decimal  "decDomCoordX",                   :precision => 10, :scale => 4
    t.decimal  "decDomCoordY",                   :precision => 10, :scale => 4
  end

  create_table "AsambleasSucursales_log", :id => false, :force => true do |t|
    t.string   "strEntidadID",    :limit => 4,                                  :null => false
    t.integer  "intAsambleaID",   :limit => 10,                                 :null => false
    t.string   "strSucursal",     :limit => 140,                                :null => false
    t.string   "strCalle",        :limit => 100,                                :null => false
    t.integer  "intCalleNro",     :limit => 10,                                 :null => false
    t.string   "strOficina",      :limit => 10
    t.string   "strCP",           :limit => 8,                                  :null => false
    t.string   "strLocalidad",    :limit => 50,                                 :null => false
    t.string   "strProvincia",    :limit => 20,                                 :null => false
    t.string   "strTelefono",     :limit => 20,                                 :null => false
    t.string   "strFax",          :limit => 20
    t.datetime "datInicio",       :limit => 23,                                 :null => false
    t.string   "strTipoSucursal", :limit => 1
    t.string   "strGerente",      :limit => 140,                                :null => false
    t.string   "strCUIT",         :limit => 11
    t.string   "strTipoDoc",      :limit => 1,                                  :null => false
    t.integer  "intNroDocumento", :limit => 10,                                 :null => false
    t.datetime "datDocumento",    :limit => 23,                                 :null => false
    t.decimal  "decDomCoordX",                   :precision => 10, :scale => 4
    t.decimal  "decDomCoordY",                   :precision => 10, :scale => 4
  end

  create_table "AsambleasTramites", :id => false, :force => true do |t|
    t.string  "strEntidadID",  :limit => 4,  :null => false
    t.integer "intAsambleaID", :limit => 10, :null => false
    t.string  "strTipoCambio", :limit => 5
    t.text    "txtDetalle"
  end

  create_table "AsambleasTramites_log", :id => false, :force => true do |t|
    t.string  "strEntidadID",  :limit => 4,  :null => false
    t.integer "intAsambleaID", :limit => 10, :null => false
    t.string  "strTipoCambio", :limit => 5
    t.text    "txtDetalle"
  end

  create_table "Asambleas_log", :id => false, :force => true do |t|
    t.integer  "intAsambleaID",       :limit => 10, :null => false
    t.string   "strPresentacionID",   :limit => 1,  :null => false
    t.string   "strEntidadID",        :limit => 4,  :null => false
    t.integer  "intAsambleaNro",      :limit => 10, :null => false
    t.datetime "datFecha",            :limit => 23, :null => false
    t.string   "strTipoAsamblea",     :limit => 1,  :null => false
    t.datetime "datConfirmado",       :limit => 23
    t.integer  "intUsuarioID",        :limit => 10, :null => false
    t.datetime "datInstante",         :limit => 23, :null => false
    t.integer  "intUsrVerificadoID",  :limit => 10
    t.string   "strEstado",           :limit => 1
    t.datetime "datVerificado",       :limit => 23
    t.integer  "intTramiteSETRA",     :limit => 10
    t.string   "strAnioTramiteSETRA", :limit => 4
    t.string   "strCodVerificacion",  :limit => 10
  end

  create_table "CUSTODIOS", :id => false, :force => true do |t|
    t.string   "strCustodioID",  :limit => 4,  :null => false
    t.string   "strDescripcion", :limit => 50, :null => false
    t.string   "strCUIT",        :limit => 11, :null => false
    t.integer  "intUsuarioID",   :limit => 10, :null => false
    t.datetime "datInstante",    :limit => 23, :null => false
  end

  add_index "CUSTODIOS", ["strCUIT"], :name => "strCUIT"
  add_index "CUSTODIOS", ["strCustodioID"], :name => "strCustodioID"
  add_index "CUSTODIOS", ["strDescripcion"], :name => "strDescripcion"

  create_table "CUSTODIOS_log", :id => false, :force => true do |t|
    t.string   "strCustodioID",  :limit => 4,  :null => false
    t.string   "strDescripcion", :limit => 50, :null => false
    t.string   "strCUIT",        :limit => 11, :null => false
    t.integer  "intUsuarioID",   :limit => 10, :null => false
    t.datetime "datInstante",    :limit => 23, :null => false
  end

  create_table "Companias", :id => false, :force => true do |t|
    t.string   "CiaId",               :limit => 4,                  :null => false
    t.string   "Denominacion",        :limit => 200,                :null => false
    t.integer  "Actividad1_ID",       :limit => 3
    t.integer  "Actividad2_ID",       :limit => 3
    t.integer  "Pais_ID",             :limit => 3
    t.string   "CUIT",                :limit => 13
    t.integer  "Tipo_Social_ID",      :limit => 3
    t.integer  "Grupo_ID",            :limit => 3
    t.integer  "Estado_ID",           :limit => 3
    t.integer  "Reaseguradora",       :limit => 3
    t.string   "Direccion_DL",        :limit => 70
    t.integer  "Provincia_DL_ID",     :limit => 3
    t.string   "Codigo_Postal",       :limit => 10
    t.string   "Telefonos_DL",        :limit => 102
    t.string   "Fax_DL",              :limit => 51
    t.string   "Localidad_DL",        :limit => 30
    t.string   "Email_DL",            :limit => 51
    t.string   "Web_DL",              :limit => 60
    t.string   "Datos_Insc",          :limit => 200
    t.string   "Ramo_ID",             :limit => 3
    t.string   "Usrname_Creador",     :limit => 20
    t.datetime "Fecha_Creación",      :limit => 23
    t.datetime "Ultima_Modificacion", :limit => 23
    t.integer  "SCVO",                :limit => 3
    t.string   "DenominacionCorta",   :limit => 200
    t.integer  "Cierre_Balance",      :limit => 3
    t.integer  "automotores",         :limit => 3
    t.integer  "id_entrega",          :limit => 3
    t.integer  "id_entrega_2",        :limit => 3
    t.integer  "aero",                :limit => 3,   :default => 0, :null => false
    t.integer  "Pd",                  :limit => 3,   :default => 0, :null => false
    t.integer  "IDAutonum",           :limit => 10,                 :null => false
  end

  create_table "CompaniasDJTU", :id => false, :force => true do |t|
    t.string "CiaID",   :limit => 4, :null => false
    t.string "Pri1y2",  :limit => 1
    t.string "Pri3",    :limit => 1
    t.string "Pri4",    :limit => 1
    t.string "Pri5",    :limit => 1
    t.string "Pri6",    :limit => 1
    t.string "Pol1y2",  :limit => 1
    t.string "Sin1y2",  :limit => 1
    t.string "SegVial", :limit => 1
  end

  create_table "Companias_Internet", :id => false, :force => true do |t|
    t.string  "CiaID",             :limit => 4,   :null => false
    t.string  "Denominacion",      :limit => 200, :null => false
    t.string  "cActividad",        :limit => 20,  :null => false
    t.string  "cTipoSoc",          :limit => 30,  :null => false
    t.string  "Domicilio",         :limit => 70
    t.string  "Localidad",         :limit => 30
    t.string  "cProvLegal",        :limit => 20,  :null => false
    t.string  "Telefonos",         :limit => 102
    t.string  "Fax",               :limit => 51
    t.string  "cemail",            :limit => 51
    t.string  "cInternet",         :limit => 60
    t.string  "cEstado",           :limit => 3
    t.string  "Estado",            :limit => 20,  :null => false
    t.string  "Presidente",        :limit => 1,   :null => false
    t.string  "Campo15",           :limit => 13
    t.string  "Codigo_Postal",     :limit => 10
    t.string  "DenominacionCorta", :limit => 200
    t.integer "automotores",       :limit => 3
  end

  create_table "DEPOSITARIAS", :id => false, :force => true do |t|
    t.string   "strDepositariaID",  :limit => 4,  :null => false
    t.string   "strDescripcion",    :limit => 50, :null => false
    t.string   "strCNVInscripcion", :limit => 10, :null => false
    t.string   "strCUIT",           :limit => 11
    t.integer  "intUsuarioID",      :limit => 10, :null => false
    t.datetime "datInstante",       :limit => 23, :null => false
  end

  add_index "DEPOSITARIAS", ["strDepositariaID"], :name => "IX_DEPOSITARIAS"

  create_table "DEPOSITARIAS_log", :id => false, :force => true do |t|
    t.string   "strDepositariaID",  :limit => 4,  :null => false
    t.string   "strDescripcion",    :limit => 50, :null => false
    t.string   "strCNVInscripcion", :limit => 10, :null => false
    t.string   "strCUIT",           :limit => 11, :null => false
    t.integer  "intUsuarioID",      :limit => 10, :null => false
    t.datetime "datInstante",       :limit => 23, :null => false
  end

  create_table "Directorio", :id => false, :force => true do |t|
    t.string   "CiaId",                :limit => 4,                                  :null => false
    t.integer  "DirectorID",           :limit => 3,                                  :null => false
    t.integer  "DirectorioID",         :limit => 3,                                  :null => false
    t.integer  "Estado",               :limit => 3,                                  :null => false
    t.string   "Nombre_DL",            :limit => 50
    t.string   "Funcion_DL",           :limit => 50
    t.datetime "Fecha_Desde",          :limit => 23
    t.datetime "Fecha_Hasta",          :limit => 23
    t.string   "Nacionalidad_DL",      :limit => 20
    t.string   "CUIT",                 :limit => 13
    t.string   "Tipo_DU",              :limit => 10
    t.decimal  "Numero_DU",                           :precision => 18, :scale => 0
    t.decimal  "Numero_CI",                           :precision => 18, :scale => 0
    t.string   "CI_Exped",             :limit => 20
    t.datetime "Fecha_Nacimiento",     :limit => 23
    t.string   "Lugar_Nacimiento",     :limit => 20
    t.string   "Estado_Civil",         :limit => 15
    t.string   "Datos_Conyuge",        :limit => 50
    t.string   "Datos_Padre",          :limit => 50
    t.string   "Datos_Madre",          :limit => 50
    t.string   "Datos_Inscripcion",    :limit => 200
    t.string   "Profesion",            :limit => 20
    t.string   "Domicilio_Particular", :limit => 50
    t.string   "Localidad_Particular", :limit => 30
    t.string   "CP_Particular",        :limit => 10
    t.string   "Provincia_Particular", :limit => 50
    t.string   "Domicilio_Comercial",  :limit => 50
    t.string   "Localidad_Comercial",  :limit => 30
    t.string   "CP_Comercial",         :limit => 10
    t.string   "Provincia_Comercial",  :limit => 50
    t.string   "Usrname_Creador",      :limit => 20
    t.datetime "Fecha_Creación",       :limit => 23
    t.datetime "Recepcion_4365",       :limit => 23
    t.decimal  "Matricula_SSN",                       :precision => 18, :scale => 0
  end

  create_table "Directorio_Grace", :id => false, :force => true do |t|
    t.string   "CiaId",                :limit => 4,                                  :null => false
    t.integer  "DirectorID",           :limit => 3,                                  :null => false
    t.integer  "DirectorioID",         :limit => 3,                                  :null => false
    t.integer  "Estado",               :limit => 3,                                  :null => false
    t.string   "Nombre_DL",            :limit => 50
    t.string   "Funcion_DL",           :limit => 50
    t.datetime "Fecha_Desde",          :limit => 23
    t.datetime "Fecha_Hasta",          :limit => 23
    t.string   "Nacionalidad_DL",      :limit => 20
    t.string   "CUIT",                 :limit => 13
    t.string   "Tipo_DU",              :limit => 10
    t.decimal  "Numero_DU",                           :precision => 18, :scale => 0
    t.decimal  "Numero_CI",                           :precision => 18, :scale => 0
    t.string   "CI_Exped",             :limit => 20
    t.datetime "Fecha_Nacimiento",     :limit => 23
    t.string   "Lugar_Nacimiento",     :limit => 20
    t.string   "Estado_Civil",         :limit => 15
    t.string   "Datos_Conyuge",        :limit => 50
    t.string   "Datos_Padre",          :limit => 50
    t.string   "Datos_Madre",          :limit => 50
    t.string   "Datos_Inscripcion",    :limit => 200
    t.string   "Profesion",            :limit => 20
    t.string   "Domicilio_Particular", :limit => 50
    t.string   "Localidad_Particular", :limit => 20
    t.string   "CP_Particular",        :limit => 10
    t.string   "Provincia_Particular", :limit => 50
    t.string   "Domicilio_Comercial",  :limit => 50
    t.string   "Localidad_Comercial",  :limit => 20
    t.string   "CP_Comercial",         :limit => 10
    t.string   "Provincia_Comercial",  :limit => 50
    t.string   "Usrname_Creador",      :limit => 20
    t.datetime "Fecha_Creación",       :limit => 23
    t.datetime "Recepcion_4365",       :limit => 23
    t.decimal  "Matricula_SSN",                       :precision => 18, :scale => 0
  end

  create_table "Directorio_Internet", :id => false, :force => true do |t|
    t.string   "CiaID",        :limit => 4,  :null => false
    t.integer  "DirectorID",   :limit => 3,  :null => false
    t.integer  "DirectorioID", :limit => 3,  :null => false
    t.string   "Nombre_DL",    :limit => 50
    t.string   "Funcion_DL",   :limit => 50
    t.datetime "Fecha_Desde",  :limit => 23
    t.datetime "Fecha_Hasta",  :limit => 23
  end

  create_table "Directorio_cruce", :id => false, :force => true do |t|
    t.string  "nombre_dl",    :limit => 50
    t.string  "denominacion", :limit => 60, :null => false
    t.string  "funcion_dl",   :limit => 50
    t.integer "directorioid", :limit => 3,  :null => false
  end

  create_table "Directorio_exp", :id => false, :force => true do |t|
    t.string "datos", :limit => 170
  end

  create_table "Entidades_GruposBalances_BK", :id => false, :force => true do |t|
    t.integer "intPresentacionID", :limit => 10, :null => false
    t.string  "strEntidadID",      :limit => 4,  :null => false
    t.integer "intEntregaID",      :limit => 3
  end

  create_table "Estados", :id => false, :force => true do |t|
    t.integer "EstadoId",     :limit => 3,  :null => false
    t.string  "Denominacion", :limit => 20, :null => false
    t.string  "Codigo_ant",   :limit => 3
  end

  create_table "Funciones", :id => false, :force => true do |t|
    t.integer "FuncionId",    :limit => 3,  :null => false
    t.string  "Denominacion", :limit => 40, :null => false
    t.string  "Codigo_ant",   :limit => 3
    t.integer "Prioridad",    :limit => 10
  end

  create_table "Grupos", :id => false, :force => true do |t|
    t.integer "GrupoId",      :limit => 3,  :null => false
    t.string  "Denominacion", :limit => 40, :null => false
    t.string  "Codigo_ant",   :limit => 3
  end

  create_table "Historial", :id => false, :force => true do |t|
    t.string   "CiaId",           :limit => 4,   :null => false
    t.integer  "ModID",           :limit => 3,   :null => false
    t.string   "Anterior_DL",     :limit => 105
    t.string   "Nuevo_DL",        :limit => 105
    t.string   "Tipo_Doc",        :limit => 11
    t.string   "Numero_Doc",      :limit => 6
    t.datetime "Fecha_Doc",       :limit => 23
    t.string   "Expte_Numero",    :limit => 6
    t.datetime "Expte_Fecha",     :limit => 23
    t.string   "Observaciones"
    t.string   "Usrname",         :limit => 20
    t.datetime "Fecha_Registro",  :limit => 23
    t.string   "CiaAbsorbenteID", :limit => 4
  end

  create_table "Historial_Anterior", :id => false, :force => true do |t|
    t.string "CiaID",    :limit => 4, :null => false
    t.text   "Historia"
  end

  create_table "Modificaciones", :id => false, :force => true do |t|
    t.integer "ModId",        :limit => 3,  :null => false
    t.string  "Denominacion", :limit => 70, :null => false
    t.string  "Campo",        :limit => 20, :null => false
  end

  create_table "NoPresentanBalance", :id => false, :force => true do |t|
    t.string "strEntidadID",     :limit => 4,   :null => false
    t.string "strObservaciones", :limit => 100
  end

  create_table "ORGANISMOS", :id => false, :force => true do |t|
    t.string   "strOrganismoID", :limit => 4,  :null => false
    t.string   "strDescripcion", :limit => 50, :null => false
    t.string   "strCUIT",        :limit => 11, :null => false
    t.integer  "intUsuarioID",   :limit => 10, :null => false
    t.datetime "datInstante",    :limit => 23, :null => false
  end

  create_table "ORGANISMOS_log", :id => false, :force => true do |t|
    t.string   "strOrganismoID", :limit => 4,  :null => false
    t.string   "strDescripcion", :limit => 50, :null => false
    t.string   "strCUIT",        :limit => 11, :null => false
    t.integer  "intUsuarioID",   :limit => 10, :null => false
    t.datetime "datInstante",    :limit => 23, :null => false
  end

  create_table "Paises", :id => false, :force => true do |t|
    t.integer "PaisId",       :limit => 3,  :null => false
    t.string  "Denominacion", :limit => 40, :null => false
  end

  create_table "PresentacionBalances", :id => false, :force => true do |t|
    t.integer "intPresentacionID", :limit => 10, :null => false
    t.integer "intEntregaID",      :limit => 3
    t.string  "strEntidadID",      :limit => 4,  :null => false
  end

  create_table "Presentaciones", :id => false, :force => true do |t|
    t.string   "CiaId",   :limit => 4,  :null => false
    t.string   "Usuario", :limit => 20, :null => false
    t.datetime "Fecha",   :limit => 23, :null => false
    t.string   "Archivo", :limit => 1,  :null => false
  end

  create_table "Provincias", :id => false, :force => true do |t|
    t.integer "ProvinciaId",  :limit => 3,  :null => false
    t.string  "Denominacion", :limit => 20, :null => false
    t.string  "Codigo_ant",   :limit => 3
  end

  create_table "RPEntidad", :id => false, :force => true do |t|
    t.string   "CiaID",              :limit => 4,                                 :null => false
    t.integer  "Ramo",               :limit => 10,                                :null => false
    t.datetime "Fecha",              :limit => 16
    t.integer  "ActoAdministrativo", :limit => 10
    t.decimal  "NumerodeActoAD",                   :precision => 18, :scale => 0
    t.decimal  "Expediente",                       :precision => 18, :scale => 0
  end

  create_table "Ramos", :id => false, :force => true do |t|
    t.string   "CiaID",        :limit => 4,  :null => false
    t.integer  "Ramo",         :limit => 10, :null => false
    t.string   "Usuario",      :limit => 20, :null => false
    t.datetime "Fecha",        :limit => 23, :null => false
    t.integer  "Estado",       :limit => 3,  :null => false
    t.string   "Usuario_Baja", :limit => 20
    t.datetime "Fecha_Baja",   :limit => 23
  end

  create_table "RamosActoAdministrativo", :id => false, :force => true do |t|
    t.integer "CodigoactoAdministrativo",      :limit => 10
    t.string  "DescripcionactoAdministrativo", :limit => 40
  end

  create_table "RamosPorEntidad", :id => false, :force => true do |t|
    t.string   "CiaID",              :limit => 4,                                 :null => false
    t.integer  "Ramo",               :limit => 10,                                :null => false
    t.datetime "Fecha",              :limit => 16
    t.integer  "ActoAdministrativo", :limit => 10
    t.decimal  "NumerodeActoAD",                   :precision => 18, :scale => 0
    t.decimal  "Expediente",                       :precision => 18, :scale => 0
  end

  create_table "Ramos_Portal", :id => false, :force => true do |t|
    t.integer "CodigoRamo",      :limit => 10
    t.string  "DescripcionRamo", :limit => 40
  end

  create_table "RegistroIGJ", :id => false, :force => true do |t|
    t.string   "CiaId",         :limit => 4,  :null => false
    t.integer  "intAsambleaID", :limit => 10
    t.string   "strTipoCambio", :limit => 5
    t.string   "Tipo_Doc",      :limit => 11
    t.string   "Numero_Doc",    :limit => 6
    t.datetime "Fecha_Doc",     :limit => 23
    t.string   "Expte_Numero",  :limit => 6
    t.datetime "Expte_Fecha",   :limit => 23
    t.string   "IGJ_FolioNro",  :limit => 6
    t.string   "IGJ_LibroNro",  :limit => 6
    t.string   "IGJ_TomoNro",   :limit => 6
    t.string   "IGJ_Acta",      :limit => 6
    t.string   "IGJ_Matricula", :limit => 6
    t.datetime "IGJ_Fecha",     :limit => 23
    t.string   "Observaciones"
  end

  create_table "Results", :id => false, :force => true do |t|
    t.string   "CiaId",               :limit => 4,   :null => false
    t.string   "Denominacion",        :limit => 200, :null => false
    t.integer  "Actividad1_ID",       :limit => 3
    t.integer  "Actividad2_ID",       :limit => 3
    t.integer  "Pais_ID",             :limit => 3
    t.string   "CUIT",                :limit => 13
    t.integer  "Tipo_Social_ID",      :limit => 3
    t.integer  "Grupo_ID",            :limit => 3
    t.integer  "Estado_ID",           :limit => 3
    t.integer  "Reaseguradora",       :limit => 3
    t.string   "Direccion_DL",        :limit => 70
    t.integer  "Provincia_DL_ID",     :limit => 3
    t.string   "Codigo_Postal",       :limit => 10
    t.string   "Telefonos_DL",        :limit => 102
    t.string   "Fax_DL",              :limit => 51
    t.string   "Localidad_DL",        :limit => 30
    t.string   "Email_DL",            :limit => 51
    t.string   "Web_DL",              :limit => 60
    t.string   "Datos_Insc",          :limit => 200
    t.string   "Ramo_ID",             :limit => 3
    t.string   "Usrname_Creador",     :limit => 20
    t.datetime "Fecha_Creación",      :limit => 23
    t.datetime "Ultima_Modificacion", :limit => 23
    t.integer  "SCVO",                :limit => 3
    t.string   "DenominacionCorta",   :limit => 200
    t.integer  "Cierre_Balance",      :limit => 3
    t.integer  "automotores",         :limit => 3
    t.integer  "id_entrega",          :limit => 3
  end

  create_table "Rubros", :id => false, :force => true do |t|
    t.integer "RubroID",      :limit => 3, :null => false
    t.string  "Denominacion"
    t.string  "Seccion",      :limit => 3
  end

  create_table "Rubros_Cuentas", :id => false, :force => true do |t|
    t.integer "RubroID", :limit => 10, :null => false
    t.string  "Cuenta",  :limit => 20, :null => false
    t.string  "Seccion", :limit => 3
  end

  create_table "Sanciones", :id => false, :force => true do |t|
    t.string   "CiaID",           :limit => 4,  :null => false
    t.integer  "ID",              :limit => 10, :null => false
    t.integer  "nroExped",        :limit => 10
    t.datetime "FechaExped",      :limit => 23
    t.integer  "nroResolucion",   :limit => 10
    t.datetime "FechaResolucion", :limit => 23
    t.integer  "nroProveido",     :limit => 10
    t.datetime "FechaProveido",   :limit => 23
    t.string   "sancionID",       :limit => 30
    t.string   "Estado",          :limit => 10, :null => false
    t.string   "motivo",                        :null => false
    t.string   "usrname",         :limit => 20, :null => false
    t.datetime "fechaRegistro",   :limit => 23
  end

  create_table "Sucursales", :id => false, :force => true do |t|
    t.string   "CiaId",                 :limit => 4,  :null => false
    t.integer  "SucID",                 :limit => 10
    t.string   "SucNombre",             :limit => 70, :null => false
    t.string   "Direccion_DL",          :limit => 70
    t.string   "Localidad_DL",          :limit => 40
    t.string   "Provincia_ID",          :limit => 20
    t.string   "Codigo_Postal_DL",      :limit => 10
    t.string   "Tipo",                  :limit => 1
    t.string   "Telefonos_DL",          :limit => 50
    t.string   "Fax_DL",                :limit => 50
    t.datetime "Aceptacion_Fecha",      :limit => 23
    t.string   "Aceptacion_Doc_ID",     :limit => 10
    t.string   "Aceptacion_Doc_Numero", :limit => 6
    t.datetime "Inicio_Fecha",          :limit => 23
    t.datetime "Baja_Fecha",            :limit => 23
    t.string   "Baja_Doc_ID",           :limit => 10
    t.string   "Baja_Doc_Numero",       :limit => 6
    t.string   "Gerente_DL",            :limit => 40
    t.string   "DNI_Gerente_DL",        :limit => 8
    t.string   "Usrname_Creador",       :limit => 20
    t.datetime "Fecha_Creación",        :limit => 23
    t.integer  "Estado",                :limit => 3
    t.string   "Usuario_Baja",          :limit => 20
    t.datetime "Fecha_Baja",            :limit => 23
    t.string   "Tipo_Doc_Gerente",      :limit => 15
  end

  create_table "Tablas_Ant", :id => false, :force => true do |t|
    t.integer "Codigo_Tabla", :limit => 3,   :null => false
    t.string  "Codigo_Item",  :limit => 8
    t.string  "Descripcion",  :limit => 254
  end

  create_table "TiposTramites", :id => false, :force => true do |t|
    t.string "strTipoCambio",  :limit => 5
    t.string "strDescripcion", :limit => 50
    t.string "strCampos",      :limit => 80
  end

  create_table "TiposTramites_AUXILIAR", :id => false, :force => true do |t|
    t.string  "strTipoCambio",  :limit => 5
    t.string  "strDescripcion", :limit => 50
    t.integer "intModID",       :limit => 3
    t.string  "strIGJ",         :limit => 1
  end

  create_table "Tipos_Ramos", :id => false, :force => true do |t|
    t.integer "RamoID",      :limit => 10, :null => false
    t.string  "Descripcion",               :null => false
    t.text    "Detalle"
  end

  create_table "Tipos_Sanciones", :id => false, :force => true do |t|
    t.integer "SancionID",    :limit => 3,  :null => false
    t.string  "Denominacion", :limit => 30, :null => false
    t.string  "Codigo_ant",   :limit => 3
  end

  create_table "Tipos_Societarios", :id => false, :force => true do |t|
    t.integer "TipoId",       :limit => 3,  :null => false
    t.string  "Denominacion", :limit => 30, :null => false
    t.string  "Codigo_ant",   :limit => 3
  end

  create_table "Usuarios", :id => false, :force => true do |t|
    t.string  "UsuarioID", :limit => 20, :null => false
    t.string  "Password",  :limit => 16
    t.integer "Nivel",     :limit => 10
  end

  create_table "dtproperties", :force => true do |t|
    t.integer "objectid", :limit => 10
    t.string  "property", :limit => 64,                :null => false
    t.string  "value"
    t.string  "uvalue"
    t.binary  "lvalue"
    t.integer "version",  :limit => 10, :default => 0, :null => false
  end

  create_table "loggs", :id => false, :force => true do |t|
    t.string   "Usuario",      :limit => 20, :null => false
    t.datetime "FechaIngreso", :limit => 23, :null => false
    t.string   "Accion",       :limit => 1,  :null => false
    t.datetime "Hora",         :limit => 23, :null => false
  end

  create_table "loggs_ASP", :id => false, :force => true do |t|
    t.string   "host",        :limit => 20
    t.datetime "HoraCierre",  :limit => 23
    t.datetime "FechaCierre", :limit => 23
  end

  create_table "seg", :id => false, :force => true do |t|
    t.string   "CiaId",               :limit => 4,   :null => false
    t.string   "Denominacion",        :limit => 60,  :null => false
    t.integer  "Actividad1_ID",       :limit => 3
    t.integer  "Actividad2_ID",       :limit => 3
    t.integer  "Pais_ID",             :limit => 3
    t.string   "CUIT",                :limit => 13
    t.integer  "Tipo_Social_ID",      :limit => 3
    t.integer  "Grupo_ID",            :limit => 3
    t.integer  "Estado_ID",           :limit => 3
    t.integer  "Reaseguradora",       :limit => 3
    t.string   "Direccion_DL",        :limit => 70
    t.integer  "Provincia_DL_ID",     :limit => 3
    t.string   "Codigo_Postal",       :limit => 10
    t.string   "Telefonos_DL",        :limit => 102
    t.string   "Fax_DL",              :limit => 51
    t.string   "Localidad_DL",        :limit => 30
    t.string   "Email_DL",            :limit => 51
    t.string   "Web_DL",              :limit => 60
    t.string   "Datos_Insc",          :limit => 200
    t.string   "Ramo_ID",             :limit => 3
    t.string   "Usrname_Creador",     :limit => 20
    t.datetime "Fecha_Creación",      :limit => 23
    t.datetime "Ultima_Modificacion", :limit => 23
    t.integer  "SCVO",                :limit => 3
    t.string   "DenominacionCorta",   :limit => 200
    t.integer  "Cierre_Balance",      :limit => 3
  end

  create_table "tabla_E", :id => false, :force => true do |t|
    t.string "ent", :limit => 69, :null => false
  end

  create_table "xCompanias", :id => false, :force => true do |t|
    t.string   "CiaId",               :limit => 4
    t.string   "Denominacion",        :limit => 60
    t.integer  "Actividad1_ID",       :limit => 3
    t.integer  "Actividad2_ID",       :limit => 3
    t.integer  "Pais_ID",             :limit => 3
    t.string   "CUIT",                :limit => 13
    t.integer  "Tipo_Social_ID",      :limit => 3
    t.integer  "Grupo_ID",            :limit => 3
    t.integer  "Estado_ID",           :limit => 3
    t.integer  "Reaseguradora",       :limit => 3
    t.string   "Direccion_DL",        :limit => 70
    t.integer  "Provincia_DL_ID",     :limit => 3
    t.string   "Codigo_Postal",       :limit => 10
    t.string   "Telefonos_DL",        :limit => 102
    t.string   "Fax_DL",              :limit => 51
    t.string   "Localidad_DL",        :limit => 30
    t.string   "Email_DL",            :limit => 51
    t.string   "Web_DL",              :limit => 60
    t.string   "Datos_Insc",          :limit => 200
    t.string   "Ramo_ID",             :limit => 3
    t.string   "Usrname_Creador",     :limit => 20
    t.datetime "Fecha_Creación",      :limit => 16
    t.datetime "Ultima_Modificacion", :limit => 16
    t.integer  "SCVO",                :limit => 3
    t.string   "DenominacionCorta",   :limit => 200
    t.integer  "Cierre_Balance",      :limit => 3
    t.integer  "automotores",         :limit => 3
  end

end
