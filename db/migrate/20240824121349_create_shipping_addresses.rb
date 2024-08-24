class CreateShippingAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :shipping_addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country

      t.timestamps
    end
  end
end
