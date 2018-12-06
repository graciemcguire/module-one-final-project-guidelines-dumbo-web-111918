require_relative '../config/environment'
require_relative "../lib/user_interface.rb"
require 'pry'
# prompt = TTY::Prompt.new
# prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))


welcome
new_customer
drink_type = first_prompt
# drink_base = second_prompt
# drink_strength = third_prompt
drink_choice = [drink_type, drink_base, drink_strength]


Order.where("drink_type = ?", "drink_base = ?", "drink_strength = ?")
Client.where("orders_count = ?", params[:orders])

binding.pry
