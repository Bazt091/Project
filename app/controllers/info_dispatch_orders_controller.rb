class InfoDispatchOrdersController < ApplicationController
  before_action :set_info_dispatch_order, only: [:show, :edit, :update, :destroy]

  # GET /info_dispatch_orders
  # GET /info_dispatch_orders.json
  def index
    @info_dispatch_orders = InfoDispatchOrder.all
  end

  # GET /info_dispatch_orders/1
  # GET /info_dispatch_orders/1.json
  def show
  end

  # GET /info_dispatch_orders/new
  def new
    @info_dispatch_order = InfoDispatchOrder.new
  end

  # GET /info_dispatch_orders/1/edit
  def edit
  end

  # POST /info_dispatch_orders
  # POST /info_dispatch_orders.json
  def create
    @info_dispatch_order = InfoDispatchOrder.new(info_dispatch_order_params)

    respond_to do |format|
      if @info_dispatch_order.save
        format.html { redirect_to @info_dispatch_order, notice: 'Info dispatch order was successfully created.' }
        format.json { render :show, status: :created, location: @info_dispatch_order }
      else
        format.html { render :new }
        format.json { render json: @info_dispatch_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /info_dispatch_orders/1
  # PATCH/PUT /info_dispatch_orders/1.json
  def update
    respond_to do |format|
      if @info_dispatch_order.update(info_dispatch_order_params)
        format.html { redirect_to @info_dispatch_order, notice: 'Info dispatch order was successfully updated.' }
        format.json { render :show, status: :ok, location: @info_dispatch_order }
      else
        format.html { render :edit }
        format.json { render json: @info_dispatch_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_dispatch_orders/1
  # DELETE /info_dispatch_orders/1.json
  def destroy
    @info_dispatch_order.destroy
    respond_to do |format|
      format.html { redirect_to info_dispatch_orders_url, notice: 'Info dispatch order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info_dispatch_order
      @info_dispatch_order = InfoDispatchOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def info_dispatch_order_params
      params.require(:info_dispatch_order).permit(:client_id, :client_name, :client_order_purchase, :user_id, :user_name)
    end
end
