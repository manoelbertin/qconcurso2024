class AdminsBackoffice::AdminsController < AdminsBackofficeController
  # aqui está herdando tanto a autenticação quanto o layout específico.
  before_action :set_admin, only: [:edit, :update]

  def index
    @admins = Admin.all.order(:id)
  end

  def edit 
  end

  def update
    if params[:admin][:password].blank? && params[:admin][:password_confirmation].blank?
      params[:admin].extract!(:password, :password_confirmation)
    end
    params_admin
    if @admin.update(params_admin)
      redirect_to admins_backoffice_admins_path, notice: "Successfully Updated"
    else 
      render :edit
    end
  end

  private
  
  def params_admin
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end

  def set_admin
    @admin = Admin.find(params[:id])
  end
end
