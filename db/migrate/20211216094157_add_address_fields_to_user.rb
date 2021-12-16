class AddAddressFieldsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :add_line1, :string
    add_column :users, :add_line2, :string
    add_column :users, :state, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :pin_code, :string
  end
end
