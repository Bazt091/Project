class InfoPurchaseOrder < ApplicationRecord
  belongs_to :provider
  belongs_to :user

end
