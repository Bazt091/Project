class InfoPurchaseOrdersController < ApplicationController
  before_action :set_info_purchase_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /info_purchase_orders
  # GET /info_purchase_orders.json
  def index
    @info_purchase_orders = InfoPurchaseOrder.all
  end

  # GET /info_purchase_orders/1
  # GET /info_purchase_orders/1.json
  def show
  end

  # GET /info_purchase_orders/new
  def new
    @info_purchase_order = InfoPurchaseOrder.new
  end

  # GET /info_purchase_orders/1/edit
  def edit
  end

  # POST /info_purchase_orders
  # POST /info_purchase_orders.json
  def create
    @info_purchase_order = InfoPurchaseOrder.new(info_purchase_order_params)

    respond_to do |format|
      if @info_purchase_order.save
        format.html { redirect_to @info_purchase_order, notice: 'Info purchase order was successfully created.' }
        format.json { render :show, status: :created, location: @info_purchase_order }
      else
        format.html { render :new }
        format.json { render json: @info_purchase_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /info_purchase_orders/1
  # PATCH/PUT /info_purchase_orders/1.json
  def update
    respond_to do |format|
      if @info_purchase_order.update(info_purchase_order_params)
        format.html { redirect_to @info_purchase_order, notice: 'Info purchase order was successfully updated.' }
        format.json { render :show, status: :ok, location: @info_purchase_order }
      else
        format.html { render :edit }
        format.json { render json: @info_purchase_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_purchase_orders/1
  # DELETE /info_purchase_orders/1.json
  def destroy
    @info_purchase_order.destroy
    respond_to do |format|
      format.html { redirect_to info_purchase_orders_url, notice: 'Info purchase order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info_purchase_order
      @info_purchase_order = InfoPurchaseOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def info_purchase_order_params
      params.require(:info_purchase_order).permit(:provider_id, :provider_name, :user_id, :user_name)
    end
end
