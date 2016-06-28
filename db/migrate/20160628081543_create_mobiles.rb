class CreateMobiles < ActiveRecord::Migration
  def change
    create_table :mobiles do |t|
      t.string :mobile_name
      t.string :brand_name
      t.integer :price
      t.string :mobile_type
      t.string :top_os
      t.string :battery_capacity
      t.string :screen_size
      t.string :ram
      t.string :resolution_type
      t.string :internet_features
      t.string :sim_type
      t.string :primary_camera
      t.string :os_version_name
      t.string :secondary_camera
      t.string :network_type
      t.string :clock_speed
      t.string :features
      t.string :number_of_cores
      t.string :availability

      t.timestamps null: false
    end
  end
end
