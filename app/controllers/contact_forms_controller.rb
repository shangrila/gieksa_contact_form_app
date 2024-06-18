# app/controllers/contact_forms_controller.rb
class ContactFormsController < ApplicationController
  def new
  end

  def create
    @contact_form = params.require(:contact_form).permit(:name, :pesel, :email, :phone, :message, :district, :referrer, :forum_nickname)
    ContactFormMailer.with(contact_form: @contact_form).send_form.deliver_now
    redirect_to root_path, notice: 'Formularz został wysłany.'
  end
end
