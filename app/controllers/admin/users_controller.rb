class Admin::UsersController < ApplicationController
  before_action :set_admin_user, only: %i[ show edit update destroy ]
  before_action :set_form_choices, only: %i[ new create edit update ]

  # GET /admin/users or /admin/users.json
  def index
    @insurance = Admin::Insurance.find_by_id( params[:insurance_id] ) unless params[:insurance_id].blank?
    @admin_users = @insurance.blank? ? Admin::User.all : @insurance.admin_users
  end

  # GET /admin/users/1 or /admin/users/1.json
  def show
  end

  # GET /admin/users/new
  def new
    @admin_user = Admin::User.new
    @admin_user.build_details
  end

  # GET /admin/users/1/edit
  def edit
  end

  # POST /admin/users or /admin/users.json
  def create
    @admin_user = Admin::User.new(admin_user_params)

    respond_to do |format|
      if @admin_user.save
        format.html { redirect_to admin_user_url(@admin_user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @admin_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/users/1 or /admin/users/1.json
  def update
    respond_to do |format|
      debugger
      if @admin_user.update(admin_user_params)
        format.html { redirect_to admin_user_url(@admin_user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/users/1 or /admin/users/1.json
  def destroy
    @admin_user.destroy

    respond_to do |format|
      format.html { redirect_to admin_users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_user
      @admin_user = Admin::User.find(params[:id])
    end

    def set_form_choices
      @roles = Role.all
      @statuses = UserDetails.statuses
    end

    # Only allow a list of trusted parameters through.
    def admin_user_params
      permitted_params = [ :email, { insurance_ids: [], role_ids: [], details_attributes: [ :first_name, :last_name, :phone_number, :additional_info, :status_id ] } ]

      if ( !params[ :admin_user ].blank? && ( !params[ :admin_user ][ :password ].blank? || !params[ :admin_user ][ :password_confirmation ].blank? ) )
        permitted_params << :password
        permitted_params << :password_confirmation
      end

      params.require(:admin_user).permit(permitted_params)
    end
end
