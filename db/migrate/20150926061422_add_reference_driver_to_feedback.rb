class AddReferenceDriverToFeedback < ActiveRecord::Migration
  def change
    add_reference :feedbacks, :driver, index: true, foreign_key: true
  end
end
