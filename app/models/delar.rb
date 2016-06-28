class Delar < ActiveRecord::Base
  has_and_belongs_to_many :mobiles, :join_table => :mobiles_delars
end
