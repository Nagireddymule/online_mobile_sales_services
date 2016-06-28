class CreateMobilesDelarsJoinTable < ActiveRecord::Migration
  def change
    create_table :mobiles_delars do |t|
      t.integer :delar_id
      t.integer :mobile_id
    end

    add_index :mobiles_delars, :delar_id
    add_index :mobiles_delars, :mobile_id
  end
end
