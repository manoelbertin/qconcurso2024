class AdminsBackoffice::AdminsController < AdminsBackofficeController
  # aqui está herdando tanto a autenticação quanto o layout específico.
  def index
    @admins = Admin.all
  end

  def edit 
  end
end
