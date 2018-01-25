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

Contact.create( :first_name => 'Alan' )
Contact.create( :first_name => 'Henry' )
Contact.create( :first_name => 'Heidi' )

Note.create( :body => 'Part-time videographer', :contact_id => Contact.find_by_first_name("Alan").id )
Note.create( :body => 'has 2 children', :contact_id => Contact.find_by_first_name("Alan").id )
Note.create( :body => 'loves studying physics', :contact_id => Contact.find_by_first_name("Alan").id )

Note.create( :body => 'loves music', :contact_id => Contact.find_by_first_name("Henry").id )
Note.create( :body => 'lives in San Francisco', :contact_id => Contact.find_by_first_name("Henry").id )
Note.create( :body => 'played a lot of soccer', :contact_id => Contact.find_by_first_name("Henry").id )

Note.create( :body => 'Lives in Cambridge, Massashusetts', :contact_id => Contact.find_by_first_name("Heidi").id )
Note.create( :body => 'BS Business 2011 Boston University', :contact_id => Contact.find_by_first_name("Heidi").id )
Note.create( :body => 'Loves baking', :contact_id => Contact.find_by_first_name("Heidi").id )
