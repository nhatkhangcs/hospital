class CreateMedications < ActiveRecord::Migration[7.0]
  def change
    create_table :medications, id: false, primary_key: :mid do |t|
      t.string :mid, limit: 20
      t.string :name, null: false
      t.decimal :price, precision: 11, scale: 2, null: false
      t.date :expiration_date, null: false
      t.integer :quantity, null: false
      t.datetime :imported_datetime, null: false
      t.decimal :imported_price, null:false, precision: 11, scale: 2
      t.string :provider_number, null: false, limit: 20  
      t.timestamps
    end
  end
end
