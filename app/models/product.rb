class Product < ApplicationRecord
    has_and_belongs_to_many :clients
    has_and_belongs_to_many :stock_by_locations
    has_one_attached :image
    belongs_to :provider

    def provider_name
     provider ? provider.name : ""
    end
end
