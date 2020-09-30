class WantedPeopleController < ApplicationController
  before_action :set_wanted_person, only: [:show, :edit, :update, :destroy]

  # GET /wanted_people
  # GET /wanted_people.json
  def index
    @wanted_people = WantedPerson.all
  end

  # GET /wanted_people/1
  # GET /wanted_people/1.json
  def show
  end

  # GET /wanted_people/new
  def new
    @wanted_person = WantedPerson.new
  end

  # GET /wanted_people/1/edit
  def edit
  end

  # POST /wanted_people
  # POST /wanted_people.json
  def create
    @wanted_person = WantedPerson.new(wanted_person_params)

    respond_to do |format|
      if @wanted_person.save
        format.html { redirect_to @wanted_person, notice: 'Wanted person was successfully created.' }
        format.json { render :show, status: :created, location: @wanted_person }
      else
        format.html { render :new }
        format.json { render json: @wanted_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wanted_people/1
  # PATCH/PUT /wanted_people/1.json
  def update
    respond_to do |format|
      if @wanted_person.update(wanted_person_params)
        format.html { redirect_to @wanted_person, notice: 'Wanted person was successfully updated.' }
        format.json { render :show, status: :ok, location: @wanted_person }
      else
        format.html { render :edit }
        format.json { render json: @wanted_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wanted_people/1
  # DELETE /wanted_people/1.json
  def destroy
    @wanted_person.destroy
    respond_to do |format|
      format.html { redirect_to wanted_people_url, notice: 'Wanted person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wanted_person
      @wanted_person = WantedPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wanted_person_params
      params.require(:wanted_person).permit(:name, :image)
    end
end
