class CreateCorporateTypes < ActiveRecord::Migration
  def change
    create_table :corporate_types do |t|

      t.timestamps
    end
  end
end
