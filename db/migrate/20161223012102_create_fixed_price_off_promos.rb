class CreateFixedPriceOffPromos < ActiveRecord::Migration[5.0]
  def change
    create_table :fixed_price_off_promos do |t|
      t.integer :value
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
