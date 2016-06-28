require "administrate/base_dashboard"

class DelarDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    mobiles: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    contact: Field::Number,
    address: Field::String,
    city: Field::String,
    state: Field::String,
    country: Field::String,
    pincode: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :mobiles,
    :id,
    :name,
    :contact,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :mobiles,
    :id,
    :name,
    :contact,
    :address,
    :city,
    :state,
    :country,
    :pincode,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :mobiles,
    :name,
    :contact,
    :address,
    :city,
    :state,
    :country,
    :pincode,
  ].freeze

  # Overwrite this method to customize how delars are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(delar)
  #   "Delar ##{delar.id}"
  # end
end
