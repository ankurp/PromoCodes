class CreatePercentOffPromos < ActiveRecord::Migration[5.0]
  def change
    create_table :percent_off_promos do |t|
      t.float :value
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
