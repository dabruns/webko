# Der Controller wird fuer die Raumplanung benoetigt
class RoomplansController < ApplicationController
  before_action :set_roomplan, only: [:show, :edit, :update, :destroy]
  before_action :check_auth, only: [:edit, :update, :destroy]
  load_and_authorize_resource

  # GET /roomplans
  # GET /roomplans.json
  def index
    @roomplans = Roomplan.all
    @rooms = Room.all
  end

  def check_auth
    if current_user.id != @roomplan.user_id
      flash[:notice] = 'Sie können Einträge anderer Nutzer nicht ändern / löschen'
      redirect_to roomplan_path
    end
  end

  # GET /roomplans/1
  # GET /roomplans/1.json
  def show
  end

  # GET /roomplans/new
  def new
    @roomplan = Roomplan.new
  end

  # GET /roomplans/1/edit
  def edit
  end

  # POST /roomplans
  # POST /roomplans.json
  def create
    @roomplan = Roomplan.new(roomplan_params)
    @roomplan.user_id = current_user.id

    respond_to do |format|
      if @roomplan.save
        format.html { redirect_to @roomplan, notice: 'Eintrag wurde erfolgreich erstellt.' }
        format.json { render :show, status: :created, location: @roomplan }
      else
        format.html { render :new }
        format.json { render json: @roomplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roomplans/1
  # PATCH/PUT /roomplans/1.json
  def update
    respond_to do |format|
      if @roomplan.update(roomplan_params)
        format.html { redirect_to @roomplan, notice: 'Eintrag wurde erfolgreich aktualisiert.' }
        format.json { render :show, status: :ok, location: @roomplan }
      else
        format.html { render :edit }
        format.json { render json: @roomplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roomplans/1
  # DELETE /roomplans/1.json
  def destroy
    @roomplan.destroy
    respond_to do |format|
      format.html { redirect_to roomplans_url, notice: 'Eintrag wurde erfolgreich gelöscht.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_roomplan
    @roomplan = Roomplan.find(params[:id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def roomplan_params
    params.require(:roomplan).permit(:room_id, :usage, :start_time, :end_time)
  end
end
