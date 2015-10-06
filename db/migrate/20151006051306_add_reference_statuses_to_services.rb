class AddReferenceStatusesToServices < ActiveRecord::Migration
  def change
    add_reference :services, :status, index: true, foreign_key: true
  end
end
