class UsuariosController < ApplicationController
  def new
  end

  # Proceso para crear un usuario

  def create
    @usuario = Usuario.new usuario_params
    @usuario.save
    redirect_to @usuario
  end

  def index
    #@alluser = Image.all
    @allUsuarios = Usuario.all
  end

  def show
    @usuario = Usuario.find(params[:id])
  end

  def edit
    @usuario = Usuario.find(params[:id])
  end
   
  def update
    @usuario = Usuario.find(params[:id])
   
    if @usuario.update(usuario_params)
     redirect_to @usuario
    else
      render 'edit'
    end
  end

  def destroy
    @usuario = Usuario.find(params[:id])
    @usuario.destroy
    redirect_to usuarios_path
  end
  private
  def usuario_params
    params.require(:usuario).permit(:nombre, :apellido, :correo)
  end

  
   
 
end