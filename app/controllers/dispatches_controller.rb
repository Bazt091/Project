class DispatchesController < InheritedResources::Base

  def index
    @dispatches = Dispatch.all
    @details_dispatch_orders = DetailsDispatchOrder.all
  end
  
  private

    def dispatch_params
      params.require(:dispatch).permit(:details_dispatch_orders_id, :quantity_ok)
    end

end
