class ContactsController < ApplicationController

  def index
      @contact_all = Contact.all
      @new_name = nil
  end


  def create_new_contact_by_name
      @new_name = params['new_name']
      render 'index.html.erb'
  end

end
