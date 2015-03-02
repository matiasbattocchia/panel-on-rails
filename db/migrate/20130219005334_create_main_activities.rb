class CreateMainActivities < ActiveRecord::Migration
  def change
    create_table :main_activities do |t|

      t.timestamps
    end
  end
end
