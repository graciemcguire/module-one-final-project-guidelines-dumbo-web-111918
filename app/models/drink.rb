class Drink < ActiveRecord::Base
  belongs_to :orders
  belongs_to :patrons

  
end
