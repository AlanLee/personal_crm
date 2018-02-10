class ShowDataController < ApplicationController
    def show
      if @search_string != nil
        # @contact_selected = Contact.where("first_name like ?", "Henry")
        @contact_selected = Contact.where("first_name like ?", "#{@search_string}")
        @note_all         = Note.all
        @action_all       = Action.all
        @phone_number_all = PhoneNumber.all
      end
      render 'show.html.erb'
    end

    def select_by_first_name_search_string
      @search_string = params['search_string']
      show
      # puts @search_string
    end

end
