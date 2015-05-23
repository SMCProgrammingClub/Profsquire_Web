class Professor < ActiveRecord::Base
   has_many :professor_attributes
   has_many :comments
   has_many :courses

end


