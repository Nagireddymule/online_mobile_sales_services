class CreateDelars < ActiveRecord::Migration
  def change
    create_table :delars do |t|
      t.string :name
      t.integer :contact, :limit => 8
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :pincode

      t.timestamps null: false
    end
  end
end
