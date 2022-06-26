class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :address
      t.string :photo
      t.string :country
      t.string :roles

      t.timestamps
    end
  end
end
