class Patron < ActiveRecord::Base
	has_many :drinks
	has_many :orders, through: :drinks

	def update_tab(drink)
		newTab = self.tab + drink.price
		Patron.update(tab: newTab)
	end

	def close_out
		self.tab = 0
		Patron.update(tab: 0)
	end

	def fav_drink(drink)
		self.favorite_drink = drink
		# self.update(favorite_drink: drink)
		self.save
	end

	def return_tab

		puts "Your total tonight is $#{self.tab}. Thanks Nerd!"
		binding.pry
		self.close_out
	end 

	# def ask_fav_drink(drink)
	# 	 prompt = TTY::Prompt.new
	# 	 ask_if_fav = prompt.select("How is everything?", ["Great, I'll have another!", "I hate it! Close me out!"])
	# 	  if ask_if_fav == "Great, I'll have another!"
	# 	    self.update_tab(drink)
	# 	    self.fav_drink == drink 
	# 	  else 
	# 	    self.close_out
	# 	  #if [0] add another to tab
	# 	  #if [1] call close out
	# 	end
	# end

end
