class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.user_email(@contact).delivery_now
      ContactMailer.admin_email(@contact).delivery_now
      redirect_to root_path
    else
      render :index
    end
  end
  
  private
  def contact_params
    params.require(:contact)
          .permit(:name, :email, :content)
          .marge(remote_ip: request.remote_ip)
  end
end
