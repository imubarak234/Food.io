# frozen_string_literal: true

class CreateAccountDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :account_details do |t|
      t.string :bank
      t.integer :account_number

      t.timestamps
    end
  end
end
