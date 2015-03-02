class Shareholder < Connection::Entidades
  set_table_name :Accionistas
  alias_attribute :name, :Nombre_DL
  alias_attribute :personhood, :Personeria_DL
  alias_attribute :source, :Inversor_DL
  alias_attribute :shares, :Cant_Acciones_Susc
  alias_attribute :stock, :Participacion

  belongs_to :company, foreign_key: :CiaId
end
