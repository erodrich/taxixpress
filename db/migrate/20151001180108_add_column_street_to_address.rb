class AddColumnStreetToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :street, :string
  end
end
