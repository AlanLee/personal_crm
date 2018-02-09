class ShowDataController < ApplicationController

    def show
      @contact_all = Contact.all
      @note_all    = Note.all
      @action_all = Action.all
      @phone_number_all = PhoneNumber.all
    end
end
