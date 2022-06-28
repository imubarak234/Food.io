class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.float :amount
      t.date :date
      t.references :user, foreign_key: true
      t.references :account_detail, foreign_key: true 
      t.timestamps
    end
  end
end
