class Production < Connection::Panel
  set_table_name :ft_produccion
  alias_attribute :year, :id_tie_anio
  alias_attribute :branch_id, :id_pro_ramo_produccion

  has_many :companies, foreign_key: :id_com_compania
  belongs_to :province, foreign_key: :id_geo_provincia
end

class ProductionBranch < Connection::Panel
  set_table_name :lk_pro_ramo_produccion
  set_primary_key :id_pro_ramo_produccion
  alias_attribute :description, :ds_pro_ramo_produccion

  has_many :productions, foreign_key: :id_pro_ramo_produccion
end
