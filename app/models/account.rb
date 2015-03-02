class Account < Connection::Sinensup
  set_table_name  'CUENTAS'
  set_primary_key :ID
  alias_attribute :value, :importe

  belongs_to :account_plan, foreign_key: :ID_plan_de_cuentas_unificado

  def self.values code_sets
    values = Hash.new

    code_sets.each do |description, code_set|
      code_ids = Code.where(codigo_completo: code_set).map(&:id)

      values[description] =
        where(ID_codigo: code_ids).inject(0) do |sum, account|
          sum + account.value
        end
    end

    OpenStruct.new(values).marshal_dump
  end
end
