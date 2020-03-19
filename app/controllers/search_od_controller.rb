class SearchOdController < ApplicationController
  def index
    @dispatch_order_details = DetailsDispatchOrder.where(info_dispatch_order_id: params[:id])
  end
end
