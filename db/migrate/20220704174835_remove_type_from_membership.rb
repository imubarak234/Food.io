class RemoveTypeFromMembership < ActiveRecord::Migration[7.0]
  def change
    remove_column :memberships, :type, :string
    add_column :memberships, :member_type, :string
  end
end
