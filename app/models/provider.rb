class Provider < ApplicationRecord
    has_many :products

    def self.search(search)
        if search
          where(["name LIKE ?","%#{search}%"])
        else
            all
        end
    end
    
end
