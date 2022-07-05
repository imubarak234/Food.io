class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.float :fee
      t.string :duration
      t.string :category
      t.references :user, foreign_key: true
      t.references :account_detail, foreign_key: true
      t.timestamps
    end
  end
end
