json.array!(@profiles) do |profile|
  json.extract! profile, :id, :nombre, :apellido, :nombre_empresa, :ruc, :direccion, :email, :contraseña, :user_id
  json.url profile_url(profile, format: :json)
end
