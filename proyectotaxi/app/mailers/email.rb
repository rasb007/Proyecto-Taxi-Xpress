class Email < ApplicationMailer
 def micorreo(parametros)
    @nombre = parametros[:name]
    @email = parametros[:email]
    @mensaje = parametros[:message]
    @contacto = Contact.create(name: @nombre, email: @email, asunto: @mensaje)
  
    mail(:to => "cguti382@gmail.com", :subject => "Mensaje Nuevo del Cliente") do |format|
      format.text
      format.html
    end
 end

  def enviar(parametros)
    @nombre = parametros[:name]
    @email = parametros[:email]
    @mensaje = parametros[:message]
  
    mail(:to => parametros[:email], :subject => "Contactos - Consulta - Mensaje cliente") do |format|
      format.text
      format.html
    end
  end

  def envio_reserva(reserva, sender_name, receiver_email)
    @producto = Product.all
    @reserva = reserva
    @producto.each do |p|
      if p.salida == @reserva.distrito_salida and p.llegada == reserva.distrito_llegada
        @precio = p.precio
      end
    end
    @sender_name = sender_name
    @receiver_email = receiver_email

    mail(:to => receiver_email, :subject => "Notificacion / Pedidos") do |format|
      format.text
      format.html
    end
  end

  def reenvio_reserva(reserva, sender_name, receiver_email)
    @producto = Product.all
    @reserva = reserva
    @producto.each do |p|
      if p.salida == @reserva.distrito_salida and p.llegada == reserva.distrito_llegada
        @precio = p.precio
      end
    end
    @sender_name = sender_name
    @receiver_email = receiver_email

    mail(:to => receiver_email, :subject => "Modificacion o Eliminacion de Pedidos") do |format|
      format.text
      format.html
    end
  end
end
