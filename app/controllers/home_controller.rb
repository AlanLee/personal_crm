class HomeController < ApplicationController
  def index

    @contact_all = Contact.all
    @note_all    = Note.all
    @action_all = Action.all
    @phone_number_all = PhoneNumber.all

    @last_contact_note = @note_all.find_by_contact_id( @contact_all.first.id ).body 
  end
end
