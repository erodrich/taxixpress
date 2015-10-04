class AddReferencePaymentMethodToService < ActiveRecord::Migration
  def change
    add_reference :services, :payment_method, index: true, foreign_key: true
  end
end
