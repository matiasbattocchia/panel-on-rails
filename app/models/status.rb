class Status < Connection::Entidades
  set_table_name :Estados
  set_primary_key :EstadoId
  alias_attribute :denomination, :Denominacion
end
