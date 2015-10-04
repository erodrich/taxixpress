class AddReferenceFeedbackToService < ActiveRecord::Migration
  def change
    add_reference :services, :feedback, index: true, foreign_key: true
  end
end
