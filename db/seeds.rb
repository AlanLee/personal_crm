# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contact.delete_all
PhoneNumber.delete_all
Note.delete_all
Action.delete_all

Contact.create( :first_name => 'Alan', :last_name => 'See' )

alanlee = Contact.new
  alanlee.first_name = 'Alan'
  alanlee.last_name  =  'Lee'
  alanlee.save
  alanlee.notes << Note.create( :body => 'is a part-time videographer' )
  alanlee.notes << Note.create( :body => 'been to Hawaii once' )
  alanlee.notes << Note.create( :body => 'wants to lose 10 lbs. but can\'t seem to' )
  alanlee.notes << Note.create( :body => 'has two children; one in Cambridge, the other in San Francisco' )
  alanlee.notes << Note.create( :body => 'doesn\t watch much TV except for USC football' )
  alanlee.notes << Note.create( :body => 'has lots of books in the large bookcase' )

henrylee = Contact.new
  henrylee.first_name = 'Henry'
  henrylee.last_name = 'Lee'
  henrylee.save
  henrylee.notes << Note.create( :body => 'has two degrees from Stanford University' )
  henrylee.notes << Note.create( :body => 'sold OrderAhead in 2017 to Square Inc.' )
  henrylee.notes << Note.create( :body => 'played a lot of soccer but it tapered off while he was in college' )
  henrylee.actions << Action.create( :should_do => 'meet for coffee and discuss music' )
  henrylee.actions << Action.create( :should_do => 'check if Henry needs funding later this 2018 year' )
  henrylee.actions << Action.create( :should_do => 'does Henry play golf? should invite him sometime' )
  # henrylee.phone_numbers << PhoneNumber.create( :call_number => 9497519287 )


Contact.create( :first_name => 'Heidi' )

Note.create( :body => 'loves music', :contact_id => Contact.find_by_first_name("Henry").id )
Note.create( :body => 'lives in San Francisco', :contact_id => Contact.find_by_first_name("Henry").id )
Note.create( :body => 'played a lot of soccer', :contact_id => Contact.find_by_first_name("Henry").id )

Note.create( :body => 'Lives in Cambridge, Massashusetts', :contact_id => Contact.find_by_first_name("Heidi").id )
Note.create( :body => 'BS Business 2011 Boston University', :contact_id => Contact.find_by_first_name("Heidi").id )
Note.create( :body => 'Loves baking', :contact_id => Contact.find_by_first_name("Heidi").id )
