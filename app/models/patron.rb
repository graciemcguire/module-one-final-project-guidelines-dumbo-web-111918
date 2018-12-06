class Patron < ActiveRecord::Base
  has_many :drinks
  has_many :orders, through: :drinks
end
