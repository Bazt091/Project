class Client < ApplicationRecord
    has_and_belongs_to_many :products
    has_and_belongs_to_many :users

    def self.search(search)
        if search
          where(["name LIKE ?","%#{search}%"])
        else
            all
        end
    end
end
