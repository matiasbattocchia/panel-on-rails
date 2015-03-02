class Presentation < Connection::Sinensup
  set_table_name  'ENTREGAS'
  set_primary_key :ID

  belongs_to :company, foreign_key: :ID_compania
  belongs_to :schedule, foreign_key: :ID_cronograma
  belongs_to :account_plan, foreign_key: :ID_ultima_entrega
  has_many   :account_plans, foreign_key: :ID_entrega
end
