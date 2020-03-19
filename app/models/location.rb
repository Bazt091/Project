class Location < ApplicationRecord
    has_and_belongs_to_many :products
    has_and_belongs_to_many :stock_by_locations

    def self.search(search)
        if search
          where(["name LIKE ?","%#{search}%"])
        else
            all
        end
    end
    
end
