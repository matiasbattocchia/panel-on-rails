class CreateSecondaryActivities < ActiveRecord::Migration
  def change
    create_table :secondary_activities do |t|

      t.timestamps
    end
  end
end
