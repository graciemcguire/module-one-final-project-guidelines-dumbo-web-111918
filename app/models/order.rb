class Order < ActiveRecord::Base
  has_many :drinks
  has_many :patrons, through: :drinks
end
