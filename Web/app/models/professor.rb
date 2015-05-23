class Professor < ActiveRecord::Base
   has_many :attributes
   has_many :comments
   has_many :courses


end


