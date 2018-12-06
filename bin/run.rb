require_relative '../config/environment'
require_relative "../lib/user_interface.rb"
require_relative "../app/models/patron.rb"
require 'pry'
# prompt = TTY::Prompt.new
# prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))


welcome
patronObj = new_customer
drink = first_prompt
drinkObj = find_drink(patronObj)
patronObj.update_tab(drinkObj)
favorite_drink = patronObj.fav_drink(drinkObj.name)
ask_fav_drink(favorite_drink)
patronObj.update_tab(drinkObj)
patronObj.return_tab




binding.pry
