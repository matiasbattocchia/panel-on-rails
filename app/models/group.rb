class Group < Connection::Entidades
  set_table_name :Grupos
  set_primary_key :GrupoId
  alias_attribute :denomination, :Denominacion

  has_many :companies
end
