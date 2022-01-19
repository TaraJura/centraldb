class CustomersZoneAccesController < ApplicationController
  before_action :set_customers_zone_acce, only: %i[ show edit update destroy ]

  # GET /customers_zone_acces or /customers_zone_acces.json
  def index
    @customers_zone_acces = CustomersZoneAcce.all
  end

  # GET /customers_zone_acces/1 or /customers_zone_acces/1.json
  def show
  end

  # GET /customers_zone_acces/new
  def new
    @customers_zone_acce = CustomersZoneAcce.new
  end

  # GET /customers_zone_acces/1/edit
  def edit
  end

  # POST /customers_zone_acces or /customers_zone_acces.json
  def create
    @customers_zone_acce = CustomersZoneAcce.new(customers_zone_acce_params)

    respond_to do |format|
      if @customers_zone_acce.save
        format.html { redirect_to customers_zone_acce_url(@customers_zone_acce), notice: "Customers zone acce was successfully created." }
        format.json { render :show, status: :created, location: @customers_zone_acce }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customers_zone_acce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers_zone_acces/1 or /customers_zone_acces/1.json
  def update
    respond_to do |format|
      if @customers_zone_acce.update(customers_zone_acce_params)
        format.html { redirect_to customers_zone_acce_url(@customers_zone_acce), notice: "Customers zone acce was successfully updated." }
        format.json { render :show, status: :ok, location: @customers_zone_acce }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customers_zone_acce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers_zone_acces/1 or /customers_zone_acces/1.json
  def destroy
    @customers_zone_acce.destroy

    respond_to do |format|
      format.html { redirect_to customers_zone_acces_url, notice: "Customers zone acce was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customers_zone_acce
      @customers_zone_acce = CustomersZoneAcce.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customers_zone_acce_params
      params.require(:customers_zone_acce).permit(:zone_id, :customer_id)
    end
end
