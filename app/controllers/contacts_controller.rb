class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
    @contacts = Contact.new
  end

  def create
    @contacts = Contact.new(contact_params)

    if @contact.save
      redirect_to contact_url(@contact), notice: "contact was successfully created." 
    else
      render :new, status:  :unprocessable_entity 
    end

  end
  
  private
  
    def contact_params
      params.require(:Contact).permit(:name, :phone_number, :email)
    end


end
