class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :account, null: false, foreign_key: true
      t.integer :liked_account_id

      t.timestamps
    end
  end
end
