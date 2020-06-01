class Api::City < ApplicationRecord
  belongs_to :department
  
  has_many :client
  
  validates :code, :name, :department_id ,presence: true
end
