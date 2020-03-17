class DetailsPurchaseOrdersController < ApplicationController
  before_action :set_details_purchase_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /details_purchase_orders
  # GET /details_purchase_orders.json
  def index
    @details_purchase_orders = DetailsPurchaseOrder.all
  end

  # GET /details_purchase_orders/1
  # GET /details_purchase_orders/1.json
  def show
  end

  # GET /details_purchase_orders/new
  def new
    @details_purchase_order = DetailsPurchaseOrder.new
  end

  # GET /details_purchase_orders/1/edit
  def edit
  end

  # POST /details_purchase_orders
  # POST /details_purchase_orders.json
  def create
    @details_purchase_order = DetailsPurchaseOrder.new(details_purchase_order_params)

    respond_to do |format|
      if @details_purchase_order.save
        format.html { redirect_to @details_purchase_order, notice: 'Details purchase order was successfully created.' }
        format.json { render :show, status: :created, location: @details_purchase_order }
      else
        format.html { render :new }
        format.json { render json: @details_purchase_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /details_purchase_orders/1
  # PATCH/PUT /details_purchase_orders/1.json
  def update
    respond_to do |format|
      if @details_purchase_order.update(details_purchase_order_params)
        format.html { redirect_to @details_purchase_order, notice: 'Details purchase order was successfully updated.' }
        format.json { render :show, status: :ok, location: @details_purchase_order }
      else
        format.html { render :edit }
        format.json { render json: @details_purchase_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /details_purchase_orders/1
  # DELETE /details_purchase_orders/1.json
  def destroy
    @details_purchase_order.destroy
    respond_to do |format|
      format.html { redirect_to details_purchase_orders_url, notice: 'Details purchase order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_details_purchase_order
      @details_purchase_order = DetailsPurchaseOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def details_purchase_order_params
      params.require(:details_purchase_order).permit(:info_purchase_order_id, :product_id, :product_quantity, :comment)
    end
end
