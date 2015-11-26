class ReservasController < ApplicationController
  before_action :set_reserva, only: [:show, :edit, :suspende, :update, :destroy]
  before_action :authenticate_user! 
  # GET /reservas
  # GET /reservas.json
  def index
    @empresa1 = Company.all
    @empresa = @empresa1.find(1)
    @usuario = current_user.id
    @reservas = Reserva.all.where(user_id: @usuario)
  end

  # GET /reservas/1
  # GET /reservas/1.json
  def show
    @empresa1 = Company.all
    @empresa = @empresa1.find(1)
  end

  # GET /reservas/new
  def new
    @empresa1 = Company.all
    @empresa = @empresa1.find(1)
    @reserva = Reserva.new
    @mensaje = ["Solicitado"]
    @usuario = current_user.id
  end

  # GET /reservas/1/edit
  def edit
    @empresa1 = Company.all
    @empresa = @empresa1.find(1)
    @mensaje = ["Cambio de Dirección punto de Partida", "Cambio de Dirección del destino", "Cambio de Fecha y Horario de Recojo", "Suspendido por Cliente"]
  end

  # POST /reservas
  # POST /reservas.json
  def create
    @nombre = current_user.username
    @email = current_user.email
    @reserva = Reserva.new(reserva_params)

    respond_to do |format|
      if @reserva.save
        Email.envio_reserva(@reserva, @nombre, @email).deliver_now
        format.html { redirect_to @reserva, notice: 'Tus Pedidos ha sido Reservado y enviado al correo' }
        format.json { render :show, status: :created, location: @reserva }
      else
        format.html { render :new }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservas/1
  # PATCH/PUT /reservas/1.json
  def update
    @nombre = current_user.username
    @email = current_user.email
    
    respond_to do |format|
      if @reserva.update(reserva_params)
        Email.reenvio_reserva(@reserva, @nombre, @email).deliver_now
        format.html { redirect_to @reserva, notice: 'Tus Pedidos ha sido Modificado y enviado al correo.' }
        format.json { render :show, status: :ok, location: @reserva }
      else
        format.html { render :edit }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservas/1
  # DELETE /reservas/1.json
  def destroy
    @reserva.destroy
    respond_to do |format|
      format.html { redirect_to reservas_url, notice: 'La Reserva ha sido destruido totalmente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserva
      @reserva = Reserva.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserva_params
      @usuario = current_user.id
      params.require(:reserva).permit(:fecha, :direccion_salida, :distrito_salida, :direccion_llegada, :distrito_llegada, :modalidad, :referencia, :fecha_recojo, :hora_recojo, :tiempo, :pedido, :user_id)
    end
end
