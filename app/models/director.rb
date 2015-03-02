class Director < Connection::Entidades
  set_table_name :Directorio
  alias_attribute :name, :Nombre_DL
  alias_attribute :position, :Funcion_DL
  alias_attribute :from, :Fecha_Desde
  alias_attribute :to, :Fecha_Hasta

  belongs_to :company, foreign_key: :CiaId
end
