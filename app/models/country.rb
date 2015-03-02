class Country < Connection::Entidades
  set_table_name :Paises
  set_primary_key :PaisId
  alias_attribute :denomination, :Denominacion

  has_many :companies
end
