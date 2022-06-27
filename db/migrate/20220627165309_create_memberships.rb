class CreateMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :memberships do |t|
      t.string :type
      t.float :fees
      t.string :duration

      t.timestamps
    end
  end
end
