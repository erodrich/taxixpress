class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :no_ciudad

      t.timestamps null: false
    end
  end
end
