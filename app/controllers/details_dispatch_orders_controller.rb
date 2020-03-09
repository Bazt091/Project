class DetailsDispatchOrdersController < ApplicationController
  before_action :set_details_dispatch_order, only: [:show, :edit, :update, :destroy]

  # GET /details_dispatch_orders
  # GET /details_dispatch_orders.json
  def index
    @details_dispatch_orders = DetailsDispatchOrder.all
  end

  # GET /details_dispatch_orders/1
  # GET /details_dispatch_orders/1.json
  def show
  end

  # GET /details_dispatch_orders/new
  def new
    @details_dispatch_order = DetailsDispatchOrder.new
  end

  # GET /details_dispatch_orders/1/edit
  def edit
  end

  # POST /details_dispatch_orders
  # POST /details_dispatch_orders.json
  def create
    @details_dispatch_order = DetailsDispatchOrder.new(details_dispatch_order_params)

    respond_to do |format|
      if @details_dispatch_order.save
        format.html { redirect_to @details_dispatch_order, notice: 'Details dispatch order was successfully created.' }
        format.json { render :show, status: :created, location: @details_dispatch_order }
      else
        format.html { render :new }
        format.json { render json: @details_dispatch_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /details_dispatch_orders/1
  # PATCH/PUT /details_dispatch_orders/1.json
  def update
    respond_to do |format|
      if @details_dispatch_order.update(details_dispatch_order_params)
        format.html { redirect_to @details_dispatch_order, notice: 'Details dispatch order was successfully updated.' }
        format.json { render :show, status: :ok, location: @details_dispatch_order }
      else
        format.html { render :edit }
        format.json { render json: @details_dispatch_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /details_dispatch_orders/1
  # DELETE /details_dispatch_orders/1.json
  def destroy
    @details_dispatch_order.destroy
    respond_to do |format|
      format.html { redirect_to details_dispatch_orders_url, notice: 'Details dispatch order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_details_dispatch_order
      @details_dispatch_order = DetailsDispatchOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def details_dispatch_order_params
      params.require(:details_dispatch_order).permit(:info_dispatch_order_id, :product_id, :product_quantity, :comment)
    end
end
