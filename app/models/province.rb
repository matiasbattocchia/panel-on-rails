class Province < Connection::Entidades
  set_table_name :Provincias
  set_primary_key :ProvinciaId
  alias_attribute :denomination, :Denominacion

  has_many :companies
  has_many :productions, foreign_key: :id_geo_provincia
end
