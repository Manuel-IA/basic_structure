class Admin::InsurancesController < ApplicationController
  before_action :set_admin_insurance, only: %i[ show edit update destroy ]

  # GET /admin/insurances or /admin/insurances.json
  def index
    @user = Admin::User.find_by_id( params[:user_id] ) unless params[:user_id].blank?
    @admin_insurances = @insurance.blank? ? Admin::Insurance.all : @user.admin_insurances
  end

  # GET /admin/insurances/1 or /admin/insurances/1.json
  def show
  end

  # GET /admin/insurances/new
  def new
    @admin_insurance = Admin::Insurance.new
  end

  # GET /admin/insurances/1/edit
  def edit
  end

  # POST /admin/insurances or /admin/insurances.json
  def create
    @admin_insurance = Admin::Insurance.new(admin_insurance_params)

    respond_to do |format|
      if @admin_insurance.save
        format.html { redirect_to admin_insurance_url(@admin_insurance), notice: "Insurance was successfully created." }
        format.json { render :show, status: :created, location: @admin_insurance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/insurances/1 or /admin/insurances/1.json
  def update
    respond_to do |format|
      if @admin_insurance.update(admin_insurance_params)
        format.html { redirect_to admin_insurance_url(@admin_insurance), notice: "Insurance was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_insurance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/insurances/1 or /admin/insurances/1.json
  def destroy
    @admin_insurance.destroy

    respond_to do |format|
      format.html { redirect_to admin_insurances_url, notice: "Insurance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_insurance
      @admin_insurance = Admin::Insurance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_insurance_params
      params.require(:admin_insurance).permit(:name, :email, :contact_name, :color, user_ids: [])
    end
end
