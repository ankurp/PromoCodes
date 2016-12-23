class CreatePromocodes < ActiveRecord::Migration[5.0]
  def change
    create_table :promocodes, id: false do |t|
      t.string :code, primary: true
      t.string :promotion_type
      t.integer :promotion_id

      t.timestamps
    end
  end
end
