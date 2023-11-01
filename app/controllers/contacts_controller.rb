class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
    @contacts = Contact.new
  end

  def create
  end
  
end
