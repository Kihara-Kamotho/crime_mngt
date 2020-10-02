class MissingPeopleController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_missing_person, only: [:show, :edit, :update, :destroy]

  # GET /missing_people
  # GET /missing_people.json
  def index
    @missing_people = MissingPerson.all
  end

  # GET /missing_people/1
  # GET /missing_people/1.json
  def show
  end

  # GET /missing_people/new
  def new
    @missing_person = MissingPerson.new
  end

  # GET /missing_people/1/edit
  def edit
  end

  # POST /missing_people
  # POST /missing_people.json
  def create
    @missing_person = MissingPerson.new(missing_person_params)
    @user = current_user 

    respond_to do |format|
      if @missing_person.save
        # MissingPersonMailer.missing_person_created(@user).deliver
        format.html { redirect_to @missing_person, notice: 'Missing person was successfully created.' }
        format.json { render :show, status: :created, location: @missing_person }
      else
        format.html { render :new }
        format.json { render json: @missing_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /missing_people/1
  # PATCH/PUT /missing_people/1.json
  def update
    respond_to do |format|
      if @missing_person.update(missing_person_params)
        format.html { redirect_to @missing_person, notice: 'Missing person was successfully updated.' }
        format.json { render :show, status: :ok, location: @missing_person }
      else
        format.html { render :edit }
        format.json { render json: @missing_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /missing_people/1
  # DELETE /missing_people/1.json
  def destroy
    @missing_person.destroy
    respond_to do |format|
      format.html { redirect_to missing_people_url, notice: 'Missing person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_missing_person
      @missing_person = MissingPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def missing_person_params
      params.require(:missing_person).permit(:name, :gender, :ward, :skin_color, :height, :place_last_seen, :date_missing, :contacts, :street, :city, :image)
    end
end
