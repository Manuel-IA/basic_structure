class AssignamentsController < ApplicationController
  before_action :set_assignament, only: %i[ show edit update destroy ]

  # GET /assignaments or /assignaments.json
  def index
    @assignaments = Assignament.all
  end

  # GET /assignaments/1 or /assignaments/1.json
  def show
  end

  # GET /assignaments/new
  def new
    @assignament = Assignament.new
  end

  # GET /assignaments/1/edit
  def edit
  end

  # POST /assignaments or /assignaments.json
  def create
    @assignament = Assignament.new(assignament_params)

    respond_to do |format|
      if @assignament.save
        format.html { redirect_to assignament_url(@assignament), notice: "Assignament was successfully created." }
        format.json { render :show, status: :created, location: @assignament }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @assignament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignaments/1 or /assignaments/1.json
  def update
    respond_to do |format|
      if @assignament.update(assignament_params)
        format.html { redirect_to assignament_url(@assignament), notice: "Assignament was successfully updated." }
        format.json { render :show, status: :ok, location: @assignament }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @assignament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignaments/1 or /assignaments/1.json
  def destroy
    @assignament.destroy

    respond_to do |format|
      format.html { redirect_to assignaments_url, notice: "Assignament was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignament
      @assignament = Assignament.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assignament_params
      params.require(:assignament).permit(:owner_name, :phone_number, :email, :address, :vin_number, :po, :plate, :deductible, :insurance_aproval, :color, :status_id, :make, :model, :year, :comment)
    end
end
