class HomeController < ApplicationController
  def index
    @empresa1 = Company.all
    @empresa = @empresa1.find(1)
  end

  def contact
    @empresa1 = Company.all
    @empresa = @empresa1.find(1)

      if request.post?
      #Enviar el correo electronico
      begin
        if Email.micorreo(params).deliver_now and Email.enviar(params).deliver_now
          flash.now[:notice] = "Enviado correctamente"
        end  
      rescue
          flash.now[:error] = "No se ha enviado el correo"
      end
      end
  end

  def register
    @empresa1 = Company.all
    @empresa = @empresa1.find(1)
  end

  def services
    @empresa1 = Company.all
    @empresa = @empresa1.find(1)
    @services = Service.all
  end

  def about
    @empresa1 = Company.all
    @empresa = @empresa1.find(1)
    @abouts = About.all
  end

  def reservation
    @empresa1 = Company.all
    @empresa = @empresa1.find(1)
    #if user_signed_in?


  end
end
