class SearchDetailsController < ApplicationController
  def index
    @purchase_order_details = DetailsPurchaseOrder.where(info_purchase_order_id: params[:id])
  end
end
