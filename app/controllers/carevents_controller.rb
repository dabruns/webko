# Der Controller wird fuer die Autoplanung benoetigt
class CareventsController < ApplicationController
  before_action :set_carevent, only: [:show, :edit, :update, :destroy]
  before_action :check_auth, only: [:edit, :update, :destroy]
  load_and_authorize_resource

  # public

  # GET /carevents
  # GET /carevents.json
  def index
    @carevents = Carevent.all
    @cars = Car.all
  end

  def check_auth
    if current_user.id != @carevent.user_id
      flash[:notice] = 'Sie können Einträge anderer Nutzer nicht ändern / löschen'
      redirect_to carevent_path
    end
  end

  # GET /carevents/1
  # GET /carevents/1.json
  def show
  end

  # GET /carevents/new
  def new
    @carevent = Carevent.new
  end

  # GET /carevents/1/edit
  def edit
  end

  # POST /carevents
  # POST /carevents.json
  def create
    @carevent = Carevent.new(carevent_params)
    @carevent.user_id = current_user.id

    respond_to do |format|
      if @carevent.save
        format.html { redirect_to @carevent, notice: 'Eintrag wurde erfolgreich erstellt.' }
        format.json { render :show, status: :created, location: @carevent }
      else
        format.html { render :new }
        format.json { render json: @carevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carevents/1
  # PATCH/PUT /carevents/1.json
  def update
    respond_to do |format|
      if @carevent.update(carevent_params)
        format.html { redirect_to @carevent, notice: 'Eintrag wurde erfolgreich aktualisiert.' }
        format.json { render :show, status: :ok, location: @carevent }
      else
        format.html { render :edit }
        format.json { render json: @carevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carevents/1
  # DELETE /carevents/1.json
  def destroy
    @carevent.destroy
    notiz = String.new('Eintrag wurde erfolgreich gelöscht.')
    respond_to do |format|
      format.html { redirect_to carevents_url, notice: notiz }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_carevent
    @carevent = Carevent.find(params[:id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def carevent_params
    params.require(:carevent).permit(:title,
                                     :description,
                                     :start_time,
                                     :end_time,
                                     :car_id)
  end
end
