class VisitorsZoneAccesController < ApplicationController
  before_action :set_visitors_zone_acce, only: %i[ show edit update destroy ]

  # GET /visitors_zone_acces or /visitors_zone_acces.json
  def index
    @visitors_zone_acces = VisitorsZoneAcce.all
  end

  # GET /visitors_zone_acces/1 or /visitors_zone_acces/1.json
  def show
  end

  # GET /visitors_zone_acces/new
  def new
    @visitors_zone_acce = VisitorsZoneAcce.new
  end

  # GET /visitors_zone_acces/1/edit
  def edit
  end

  # POST /visitors_zone_acces or /visitors_zone_acces.json
  def create
    @visitors_zone_acce = VisitorsZoneAcce.new(visitors_zone_acce_params)

    respond_to do |format|
      if @visitors_zone_acce.save
        format.html { redirect_to visitors_zone_acce_url(@visitors_zone_acce), notice: "Visitors zone acce was successfully created." }
        format.json { render :show, status: :created, location: @visitors_zone_acce }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @visitors_zone_acce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visitors_zone_acces/1 or /visitors_zone_acces/1.json
  def update
    respond_to do |format|
      if @visitors_zone_acce.update(visitors_zone_acce_params)
        format.html { redirect_to visitors_zone_acce_url(@visitors_zone_acce), notice: "Visitors zone acce was successfully updated." }
        format.json { render :show, status: :ok, location: @visitors_zone_acce }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @visitors_zone_acce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitors_zone_acces/1 or /visitors_zone_acces/1.json
  def destroy
    @visitors_zone_acce.destroy

    respond_to do |format|
      format.html { redirect_to visitors_zone_acces_url, notice: "Visitors zone acce was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visitors_zone_acce
      @visitors_zone_acce = VisitorsZoneAcce.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def visitors_zone_acce_params
      params.require(:visitors_zone_acce).permit(:zone_id, :visitor_id)
    end
end
