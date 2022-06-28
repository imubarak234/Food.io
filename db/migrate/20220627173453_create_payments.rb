class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.float :amount
      t.date :date

      t.timestamps
    end
  end
end
