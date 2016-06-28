class Mobile < ActiveRecord::Base
  has_and_belongs_to_many :delars, :join_table => :mobiles_delars
  has_attached_file :image, styles: { medium: "800x300>", thumb: "3200x150>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
