class AddReferenceServiceToFeedbacks < ActiveRecord::Migration
  def change
    add_reference :feedbacks, :service, index: true, foreign_key: true
  end
end
