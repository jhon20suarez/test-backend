class Api::Department < ApplicationRecord
  belongs_to :country
  
  validates :code, :name, :country_id ,presence: true
end
