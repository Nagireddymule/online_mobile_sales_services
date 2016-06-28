require "administrate/base_dashboard"

class MobileDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    delars: Field::HasMany,
    id: Field::Number,
    mobile_name: Field::String,
    brand_name: Field::String,
    price: Field::Number,
    mobile_type: Field::String,
    top_os: Field::String,
    battery_capacity: Field::String,
    screen_size: Field::String,
    ram: Field::String,
    resolution_type: Field::String,
    internet_features: Field::String,
    sim_type: Field::String,
    primary_camera: Field::String,
    os_version_name: Field::String,
    secondary_camera: Field::String,
    network_type: Field::String,
    clock_speed: Field::String,
    features: Field::String,
    number_of_cores: Field::String,
    availability: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    image: ImageField
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :delars,
    :id,
    :mobile_name,
    :brand_name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :delars,
    :id,
    :mobile_name,
    :brand_name,
    :price,
    :mobile_type,
    :top_os,
    :battery_capacity,
    :screen_size,
    :ram,
    :resolution_type,
    :internet_features,
    :sim_type,
    :primary_camera,
    :os_version_name,
    :secondary_camera,
    :network_type,
    :clock_speed,
    :features,
    :number_of_cores,
    :availability,
    :created_at,
    :updated_at,
    :image,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :delars,
    :mobile_name,
    :brand_name,
    :price,
    :mobile_type,
    :top_os,
    :battery_capacity,
    :screen_size,
    :ram,
    :resolution_type,
    :internet_features,
    :sim_type,
    :primary_camera,
    :os_version_name,
    :secondary_camera,
    :network_type,
    :clock_speed,
    :features,
    :number_of_cores,
    :availability,
    :image,
  ].freeze

  # Overwrite this method to customize how mobiles are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(mobile)
  #   "Mobile ##{mobile.id}"
  # end
end
