class AccountPlan < Connection::Sinensup
  set_table_name  'PLAN_CUENTAS_UNIFICADO'
  set_primary_key :ID

  belongs_to :presentation, foreign_key: :ID_entrega
  has_many   :accounts, foreign_key: :ID_plan_de_cuentas_unificado
end

