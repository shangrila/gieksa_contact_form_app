# app/mailers/contact_form_mailer.rb
class ContactFormMailer < ApplicationMailer
  def send_form
    @contact_form = params[:contact_form]
    mail(to: 'specified_email@example.com', subject: 'New Contact Form Submission')
  end
end
