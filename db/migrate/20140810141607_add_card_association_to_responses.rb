class AddCardAssociationToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :card_id, :integer
    add_index :responses, :card_id
  end
end
