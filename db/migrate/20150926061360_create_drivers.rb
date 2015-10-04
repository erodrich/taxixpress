class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :no_driver
      t.string :no_correo
      t.string :nu_telefono
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
