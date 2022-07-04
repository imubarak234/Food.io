class AddTypeFromMembership < ActiveRecord::Migration[7.0]
  def change
    add_column :memberships, :type, :string
  end
end
