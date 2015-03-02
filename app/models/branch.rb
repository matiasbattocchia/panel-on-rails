class Branch < Connection::Entidades
  set_table_name  :Sucursales
  alias_attribute :name, :SucNombre
  alias_attribute :type, :Tipo
  alias_attribute :address, :Direccion_DL
  alias_attribute :locality, :Localidad_DL
  alias_attribute :province, :Provincia_ID

  belongs_to :company, foreign_key: :CiaId

  def kind
    case type
    when 'A'
      'Agencia'
    when 'S'
      'Sucursal'
    else
      'Sin registrar'
    end
  end
end
