class Concept < Connection::Panel
  set_table_name  :Concepto
  set_primary_key :ID

  attr_accessible :estado,
                  :no_activo_desde,
                  :descripcion,
                  :grupo,
                  :orden,
                  :ID
end
