class CorporateType < Connection::Entidades
  set_table_name :Tipos_Societarios
  set_primary_key :TipoId
  alias_attribute :denomination, :Denominacion 

  has_many :companies
end
