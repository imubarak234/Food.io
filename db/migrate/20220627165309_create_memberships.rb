# frozen_string_literal: true

class CreateMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :memberships do |t|
      t.string :type
      t.float :fees
      t.string :duration
      t.references :user, foreign_key: true
      t.references :account_detail, foreign_key: true
      t.timestamps
    end
  end
end
