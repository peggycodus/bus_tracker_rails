class Station < ActiveRecord::Base
  has_many :lines though :stops
  has_many :stops
end
