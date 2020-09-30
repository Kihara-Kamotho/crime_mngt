class StolenPropertiesController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_stolen_property, only: [:show, :edit, :update, :destroy]

  # GET /stolen_properties
  # GET /stolen_properties.json
  def index
    @stolen_properties = StolenProperty.all
  end

  # GET /stolen_properties/1
  # GET /stolen_properties/1.json
  def show
  end

  # GET /stolen_properties/new
  def new
    @stolen_property = StolenProperty.new
  end

  # GET /stolen_properties/1/edit
  def edit
  end

  # POST /stolen_properties
  # POST /stolen_properties.json
  def create
    @stolen_property = StolenProperty.new(stolen_property_params)
    @user = current_user 

    respond_to do |format|
      if @stolen_property.save
        #mailer 
        StolenPropertyMailer.stolen_property_created(@user).deliver
        format.html { redirect_to @stolen_property, notice: 'Stolen property was successfully created.' }
        format.json { render :show, status: :created, location: @stolen_property }
      else
        format.html { render :new }
        format.json { render json: @stolen_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stolen_properties/1
  # PATCH/PUT /stolen_properties/1.json
  def update
    respond_to do |format|
      if @stolen_property.update(stolen_property_params)
        format.html { redirect_to @stolen_property, notice: 'Stolen property was successfully updated.' }
        format.json { render :show, status: :ok, location: @stolen_property }
      else
        format.html { render :edit }
        format.json { render json: @stolen_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stolen_properties/1
  # DELETE /stolen_properties/1.json
  def destroy
    @stolen_property.destroy
    respond_to do |format|
      format.html { redirect_to stolen_properties_url, notice: 'Stolen property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stolen_property
      @stolen_property = StolenProperty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stolen_property_params
      params.require(:stolen_property).permit(:property_name, :property_description, :identification_number, :place_last_seen, :owner_name, :city, :street, :image)
    end
end
