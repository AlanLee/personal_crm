class Contact < ApplicationRecord

    has_many  :phone_numbers
    has_many  :actions
    has_many  :notes
    has_many  :dinner_friends
end
