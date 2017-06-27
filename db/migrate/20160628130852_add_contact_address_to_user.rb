class AddContactAddressToUser < ActiveRecord::Migration
  def change
    add_column :users, :contact_number, :integer
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :pincode, :integer
  end
end
