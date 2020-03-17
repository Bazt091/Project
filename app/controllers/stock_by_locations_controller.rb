class StockByLocationsController < ApplicationController
  before_action :set_stock_by_location, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /stock_by_locations
  # GET /stock_by_locations.json
  def index
    @stock_by_locations = StockByLocation.all
    #@location = Location.all
    @product = Product.all
  end

  # GET /stock_by_locations/1
  # GET /stock_by_locations/1.json
  def show
    @stock_by_locations = StockByLocation.all
  end

  # GET /stock_by_locations/new
  def new
    @stock_by_location = StockByLocation.new
  end

  # GET /stock_by_locations/1/edit
  def edit
  end

  # POST /stock_by_locations
  # POST /stock_by_locations.json
  def create
    @stock_by_location = StockByLocation.new(stock_by_location_params)

    respond_to do |format|
      if @stock_by_location.save
        format.html { redirect_to @stock_by_location, notice: 'Stock by location was successfully created.' }
        format.json { render :show, status: :created, location: @stock_by_location }
      else
        format.html { render :new }
        format.json { render json: @stock_by_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_by_locations/1
  # PATCH/PUT /stock_by_locations/1.json
  def update
    respond_to do |format|
      if @stock_by_location.update(stock_by_location_params)
        format.html { redirect_to @stock_by_location, notice: 'Stock by location was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_by_location }
      else
        format.html { render :edit }
        format.json { render json: @stock_by_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_by_locations/1
  # DELETE /stock_by_locations/1.json
  def destroy
    @stock_by_location.destroy
    respond_to do |format|
      format.html { redirect_to stock_by_locations_url, notice: 'Stock by location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_by_location
      @stock_by_location = StockByLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stock_by_location_params
      params.require(:stock_by_location).permit(:location_id, :location_name, :product_id, :product_quantity, :product_name)
    end
end
