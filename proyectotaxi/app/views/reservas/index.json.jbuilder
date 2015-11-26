json.array!(@reservas) do |reserva|
  json.extract! reserva, :id, :fecha, :direccion_salida, :distrito_salida, :direccion_llegada, :distrito_llegada, :modalidad, :referencia, :fecha_recojo, :hora_recojo, :tiempo, :pedido, :user_id
  json.url reserva_url(reserva, format: :json)
end
