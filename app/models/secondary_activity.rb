class SecondaryActivity < Connection::Entidades
  set_table_name :Actividad2
  set_primary_key :ActId
  alias_attribute :denomination, :Denominacion

  has_many :companies
end
