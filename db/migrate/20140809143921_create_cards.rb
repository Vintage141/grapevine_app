class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :user_id
      t.index :user_id
      t.text :question
      t.string :token
      t.index :token

      t.timestamps
    end
  end
end
