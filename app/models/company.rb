class Company < Connection::Entidades
  set_table_name  :Companias
  set_primary_key :CiaId
  alias_attribute :name, :Denominacion
  alias_attribute :short_name, :DenominacionCorta
  alias_attribute :cuit, :CUIT
  alias_attribute :address, :Direccion_DL
  alias_attribute :postal_code, :Codigo_Postal
  alias_attribute :phone, :Telefonos_DL
  alias_attribute :fax, :Fax_DL
  alias_attribute :locality, :Localidad_DL
  alias_attribute :email, :Email_DL
  alias_attribute :website, :Web_DL
  
  belongs_to :status, foreign_key: :Estado_ID
  belongs_to :corporate_type, foreign_key: :Tipo_Social_ID
  belongs_to :main_activity, foreign_key: :Actividad1_ID
  belongs_to :secondary_activity, foreign_key: :Actividad2_ID
  belongs_to :group, foreign_key: :Grupo_ID
  belongs_to :country, foreign_key: :Pais_ID
  belongs_to :province, foreign_key: :Provincia_DL_ID
  has_many   :branches, foreign_key: :CiaId
  has_many   :directors, foreign_key: :CiaId
  has_many   :shareholders, foreign_key: :CiaId
  has_many   :presentations, foreign_key: :ID_compania

  def account_plan period
    schedule = Schedule.where(periodo: period, tipo_entrega: 'Trimestral').first
    presentations.find_by_ID_cronograma(schedule.id).account_plan
  end
end
