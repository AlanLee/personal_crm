class HomeController < ApplicationController
  def index
    # @test = Contact.all
    # @test = @test.count
    # @test = @test.find_by_first_name('Alan').last_name
    #  @test = Contact.first.first_name
    @test = Contact.where(:first_name => 'Alan').count
    @contact_active_record = Contact.all
  end
end
