class DetailsPurchaseOrder < ApplicationRecord
  belongs_to :info_purchase_order
  belongs_to :product
end
