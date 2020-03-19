class ReceptionsController < InheritedResources::Base

  def index
    @receptions = Reception.search(params[:search])
    @details_purchase_orders = DetailsPurchaseOrder.all
  end

  private

    def reception_params
      params.require(:reception).permit(:details_purchase_orders_id, :quantity_ok)
    end

end
