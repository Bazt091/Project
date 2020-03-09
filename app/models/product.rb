class Product < ApplicationRecord
    has_and_belongs_to_many :client
    has_and_belongs_to_many :stock_by_locations
    
end
