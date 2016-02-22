class VacationplansController < ApplicationController
  before_action :set_vacationplan, only: [:show, :edit, :update, :destroy]

  # GET /vacationplans
  # GET /vacationplans.json
  def index
    @vacationplans = Vacationplan.all
  end

  # GET /vacationplans/1
  # GET /vacationplans/1.json
  def show
  end

  # GET /vacationplans/new
  def new
    @vacationplan = Vacationplan.new
  end

  # GET /vacationplans/1/edit
  def edit
  end

  # POST /vacationplans
  # POST /vacationplans.json
  def create
    @vacationplan = Vacationplan.new(vacationplan_params)
    @vacationplan.user_id = current_user.id

    respond_to do |format|
      if @vacationplan.save
        format.html { redirect_to @vacationplan, notice: 'Eintrag wurde erfolgreich erstellt.' }
        format.json { render :show, status: :created, location: @vacationplan }
      else
        format.html { render :new }
        format.json { render json: @vacationplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacationplans/1
  # PATCH/PUT /vacationplans/1.json
  def update
    respond_to do |format|
      if @vacationplan.update(vacationplan_params)
        format.html { redirect_to @vacationplan, notice: 'Eintrag wurde erfolgreich aktualisiert.' }
        format.json { render :show, status: :ok, location: @vacationplan }
      else
        format.html { render :edit }
        format.json { render json: @vacationplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacationplans/1
  # DELETE /vacationplans/1.json
  def destroy
    @vacationplan.destroy
    respond_to do |format|
      format.html { redirect_to vacationplans_url, notice: 'Eintrag wurde erfolgreich gelöscht.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacationplan
      @vacationplan = Vacationplan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacationplan_params
      params.require(:vacationplan).permit(:user_id, :start_time, :end_time)
    end
end
