class AddRelationOneToOneBetweenModels < ActiveRecord::Migration[7.2]
  def change
    add_reference :responses, :form, null: false, foreign_key: true
  end
end
