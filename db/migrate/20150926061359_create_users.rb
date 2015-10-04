class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :no_user
      t.string :no_correo
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
