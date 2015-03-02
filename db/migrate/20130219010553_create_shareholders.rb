class CreateShareholders < ActiveRecord::Migration
  def change
    create_table :shareholders do |t|

      t.timestamps
    end
  end
end
