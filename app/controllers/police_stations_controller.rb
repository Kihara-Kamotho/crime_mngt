class PoliceStationsController < ApplicationController
  before_action :set_police_station, only: [:show, :edit, :update, :destroy]

  # GET /police_stations
  # GET /police_stations.json
  def index
    @police_stations = PoliceStation.all
  end

  # GET /police_stations/1
  # GET /police_stations/1.json
  def show
  end

  # GET /police_stations/new
  def new
    @police_station = PoliceStation.new
  end

  # GET /police_stations/1/edit
  def edit
  end

  # POST /police_stations
  # POST /police_stations.json
  def create
    @police_station = PoliceStation.new(police_station_params)

    respond_to do |format|
      if @police_station.save
        format.html { redirect_to @police_station, notice: 'Police station was successfully created.' }
        format.json { render :show, status: :created, location: @police_station }
      else
        format.html { render :new }
        format.json { render json: @police_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /police_stations/1
  # PATCH/PUT /police_stations/1.json
  def update
    respond_to do |format|
      if @police_station.update(police_station_params)
        format.html { redirect_to @police_station, notice: 'Police station was successfully updated.' }
        format.json { render :show, status: :ok, location: @police_station }
      else
        format.html { render :edit }
        format.json { render json: @police_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /police_stations/1
  # DELETE /police_stations/1.json
  def destroy
    @police_station.destroy
    respond_to do |format|
      format.html { redirect_to police_stations_url, notice: 'Police station was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_police_station
      @police_station = PoliceStation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def police_station_params
      params.require(:police_station).permit(:name, :tel, :location)
    end
end
