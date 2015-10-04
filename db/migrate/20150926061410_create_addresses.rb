class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :nu_casa
      t.string :tx_edif_dpto

      t.timestamps null: false
    end
  end
end
