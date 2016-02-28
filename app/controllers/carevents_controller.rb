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

  # check authentification
  def check_auth
    notice_check_auth = String.new('Sie können Einträge anderer Nutzer nicht ändern / löschen')
    if current_user.id != @carevent.user_id
      if current_user.has_role?(:admin)
        # Admins duerfen loeschen
      else
        flash[:notice] = notice_check_auth
        redirect_to carevent_path
      end
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
    notice_create = String.new('Eintrag wurde erfolgreich erstellt.')
    @carevent = Carevent.new(carevent_params)
    @carevent.user_id = current_user.id

    respond_to do |format|
      if @carevent.save
        format.html { redirect_to @carevent, notice: notice_create }
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
    notice_update = String.new('Eintrag wurde erfolgreich aktualisiert.')
    respond_to do |format|
      if @carevent.update(carevent_params)
        format.html { redirect_to @carevent, notice: notice_update }
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
    notice_destroy = String.new('Eintrag wurde erfolgreich gelöscht.')
    @carevent.destroy

    respond_to do |format|
      format.html { redirect_to carevents_url, notice: notice_destroy }
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
