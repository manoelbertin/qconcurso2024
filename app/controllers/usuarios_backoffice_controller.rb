class UsuariosBackofficeController < ApplicationController
  before_action :authenticate_usuario!
  layout 'usuarios_backoffice'
end
