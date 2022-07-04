class RemoveTypesFromMembership < ActiveRecord::Migration[7.0]
  def change
    remove_column :memberships, :type, :string
  end
end
