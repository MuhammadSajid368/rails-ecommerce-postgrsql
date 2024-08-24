class CreateDiscounts < ActiveRecord::Migration[7.2]
  def change
    create_table :discounts do |t|
      t.string :code
      t.string :discount_type
      t.decimal :value
      t.datetime :expiration_date

      t.timestamps
    end
  end
end
