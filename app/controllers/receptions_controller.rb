class ReceptionsController < InheritedResources::Base

  def index
    @receptions = Reception.all
    @details_purchase_orders = DetailsPurchaseOrder.all
  end

  def show
    @receptions = Reception.all
    @details_purchase_orders = DetailsPurchaseOrder.all
  end

  private

    def reception_params
      params.require(:reception).permit(:details_purchase_orders_id, :quantity_ok)
    end

end
