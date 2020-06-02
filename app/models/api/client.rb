class Api::Client < ApplicationRecord
  belongs_to :document_type
  belongs_to :gender
  belongs_to :city
  
  has_one_attached :avatar
  
  validates :identification, :full_name, :birthdate, :document_type_id, :gender_id, :city_id ,presence: true
  
  paginates_per 15
end
