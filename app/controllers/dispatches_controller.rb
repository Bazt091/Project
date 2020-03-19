class DispatchesController < InheritedResources::Base

  private

    def dispatch_params
      params.require(:dispatch).permit(:details_dispatch_orders_id, :quantity_ok)
    end

end
