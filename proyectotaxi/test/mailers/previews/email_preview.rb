# Preview all emails at http://localhost:3000/rails/mailers/email
class EmailPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/email/micorreo
  def micorreo
    Email.micorreo
  end

  # Preview this email at http://localhost:3000/rails/mailers/email/enviar
  def enviar
    Email.enviar
  end

end
