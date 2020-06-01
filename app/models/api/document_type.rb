class Api::DocumentType < ApplicationRecord
    
    has_many :client
    
    validates :code, :name ,presence: true
end
