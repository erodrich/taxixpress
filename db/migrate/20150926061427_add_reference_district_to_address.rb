class AddReferenceDistrictToAddress < ActiveRecord::Migration
  def change
    add_reference :addresses, :district, index: true, foreign_key: true
  end
end
