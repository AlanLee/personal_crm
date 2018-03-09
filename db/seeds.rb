DinnerFriend.delete_all  # If this is placed after Contact.delete_all, then 'rake db:seed' will fail
Contact.delete_all
PhoneNumber.delete_all
Note.delete_all
Action.delete_all

alanlee = Contact.new
  alanlee.first_name = 'Alan'
  alanlee.last_name  =  'Lee'
  alanlee.save
  alanlee.notes << Note.create( :body => 'is a part-time videographer' )
  alanlee.notes << Note.create( :body => 'been to Hawaii once' )
  alanlee.notes << Note.create( :body => 'wants to lose 10 lbs. but can\'t seem to' )
  alanlee.notes << Note.create( :body => 'has daughter in Cambridge, son in SF' )
  alanlee.notes << Note.create( :body => 'doesn\'t watch TV except USC football games' )
  alanlee.notes << Note.create( :body => 'has lots of books in the large bookcase' )
  alanlee.phone_numbers << PhoneNumber.create( :phone_area_code => 949, :phone_7_digits => 4333366, :phone_type => 'cell' )
henrylee = Contact.new
  henrylee.first_name = 'Henry'
  henrylee.last_name = 'Lee'
  henrylee.save
  henrylee.notes << Note.create( :body => 'went to Stanford' )
  henrylee.notes << Note.create( :body => 'sold OrderAhead in 2017 to Square Inc.' )
  henrylee.notes << Note.create( :body => 'played a lot of soccer as a teenager' )
  henrylee.actions << Action.create( :should_do => 'meet for coffee and discuss music' )
  henrylee.actions << Action.create( :should_do => 'check if Henry needs funding later in 2018' )
  henrylee.actions << Action.create( :should_do => 'does Henry play golf? should invite him if he plays' )
  henrylee.phone_numbers << PhoneNumber.create( :phone_area_code => 949, :phone_7_digits => 7519287, :phone_type => 'cell' )
heidilee = Contact.new
  heidilee.first_name = 'Heidi'
  heidilee.last_name = 'Lee'
  heidilee.middle_name = 'April'
  heidilee.save
  heidilee.notes << Note.create( :body => 'lives in Cambridge, Massachusetts' )
  heidilee.notes << Note.create( :body => 'is a black-belt in Tai Quon Do' )
  heidilee.notes << Note.create( :body => 'BS Business 2011 Boston University' )
  heidilee.actions << Action.create( :should_do => 'buy her a cookbok and get a new recipe from her' )
  heidilee.phone_numbers << PhoneNumber.create( :phone_area_code => 949, :phone_7_digits => 8384909, :phone_type => 'cell' )
  heidilee.dinner_friends << DinnerFriend.create( :who => 'Bruce Lee, from the Tae Kwon Do club' )
  heidilee.dinner_friends << DinnerFriend.create( :who => 'Lauren, Heidi\'s BU classmate and apt-mate' )
alanturing = Contact.new
  alanturing.first_name = 'Alan'
  alanturing.last_name  =  'Turing'
  alanturing.save
  alanturing.notes << Note.create( :body => 'is another Alan in this database table' )
  alanturing.notes << Note.create( :body => 'was an English computer scientist' )
  alanturing.notes << Note.create( :body => 'lived June 23, 1912 - June 7, 1954' )
alansee = Contact.new
  alansee.first_name = 'Alan'
  alansee.last_name  =  'See'
  alansee.save
  alansee.notes << Note.create( :body => 'likes sitting on a See-Saw' )
  alansee.notes << Note.create( :body => 'and eating See\'s Candies' )
  alansee.actions << Action.create( :should_do => 'invite him out sometime' )
eliaherrera = Contact.new
  eliaherrera.first_name = 'Elia'
  eliaherrera.last_name  =  'Herrera'
  eliaherrera.save
  eliaherrera.actions << Action.create( :should_do => 'should introduce her to Mickey' )
  eliaherrera.dinner_friends << DinnerFriend.create( :who => 'Sofia, Elia\'s youngest sister' )
minniemouse = Contact.new
  minniemouse.first_name = 'Minnie'
  minniemouse.last_name  =  'Mouse'
  minniemouse.save
  minniemouse.actions << Action.create( :should_do => 'should introduce her to Mickey' )
  minniemouse.dinner_friends << DinnerFriend.create( :who => 'Donald Duck is Minnie\'s best friend' )
tsuyoshi = Contact.new
  tsuyoshi.first_name = 'Tsuyohsi'
  tsuyoshi.save
  tsuyoshi.notes << Note.create( :body => 'Friend of Kimiko & Kihei; a corporate lawyer')
  tsuyoshi.notes << Note.create( :body => 'Husband of Sachiko Sakai.')
sachikosakai = Contact.new
  sachikosakai.first_name = 'Sachiko'
  sachikosakai.last_name = 'Sakai'
  sachikosakai.save
  sachikosakai.notes << Note.create( :body => 'Friend of Kimiko & Kihei; Ph.D. archeologist')
  sachikosakai.notes << Note.create( :body => '15 Flaxwood, Irvine, CA.')
ellenleeway = Contact.new
  ellenleeway.first_name = 'Ellen'
  ellenleeway.last_name  =  'Leeway'
  ellenleeway.save
  ellenleeway.notes << Note.create( :body => 'created for testing only' )
johnelway = Contact.new
  johnelway.first_name = 'John'
  johnelway.last_name  =  'Elway'
  johnelway.save
henrykissinger = Contact.new
  henrykissinger.first_name = 'Henry'
  henrykissinger.last_name  =  'Kissinger'
  henrykissinger.save
mickeymouse = Contact.new
  mickeymouse.first_name = 'Mickey'
  mickeymouse.last_name  =  'Mouse'
  mickeymouse.save
mightymouse = Contact.new
  mightymouse.first_name = 'Mighty'
  mightymouse.last_name  =  'Mouse'
  mightymouse.save
zorro = Contact.new
  zorro.first_name = 'Zorro'
  zorro.save
chloekim = Contact.new
  chloekim.first_name = 'Chloe'
  chloekim.last_name = 'Kim'
  chloekim.save
  chloekim.notes << Note.create( :body => 'She\'s so cool.')
billgates = Contact.new
  billgates.first_name = 'Bill'
  billgates.last_name = 'Gates'
  billgates.save
  billgates.notes << Note.create( :body => 'Founded Microsoft.')
  billgates.dinner_friends << DinnerFriend.create( :who => 'Steve Ballmer' )
  billgates.actions << Action.create( :should_do => 'Ask him for a loan.' )
