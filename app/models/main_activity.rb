class MainActivity < Connection::Entidades
  set_table_name :Actividad1
  set_primary_key :ActId
  alias_attribute :denomination, :Denominacion

  has_many :companies
end
