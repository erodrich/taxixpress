class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :no_distrito

      t.timestamps null: false
    end
  end
end
