class CreatePaymentMethods < ActiveRecord::Migration
  def change
    create_table :payment_methods do |t|
      t.string :tx_descripcion

      t.timestamps null: false
    end
  end
end
