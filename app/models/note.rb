class Note < ApplicationRecord

      belongs_to  :contact, foreign_key: true

end
