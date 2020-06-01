class Api::Gender < ApplicationRecord
    has_many :client
    
    validates :code, :name ,presence: true
end
