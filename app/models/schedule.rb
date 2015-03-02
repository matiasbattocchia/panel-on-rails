class Schedule < Connection::Sinensup
  set_table_name  'CRONOGRAMAS'
  set_primary_key :ID
  alias_attribute :period, :periodo
  alias_attribute :frequency, :tipo_entrega

  has_many :presentations, foreign_key: :ID_cronograma
end
