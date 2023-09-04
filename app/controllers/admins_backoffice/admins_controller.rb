class AdminsBackoffice::AdminsController < AdminsBackofficeController
  # aqui está herdando tanto a autenticação quanto o layout específico.
  before_action :set_admin, only: [:edit]

  def index
    @admins = Admin.all
  end

  def edit 
  end

  def update
  end

  private
  
  def params_admin
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end

  def set_admin
    @admin = Admin.find(params[:id])
  end
end
