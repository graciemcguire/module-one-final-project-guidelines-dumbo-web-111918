require_relative '../config/environment'
require_relative "../lib/user_interface.rb"
require_relative "../app/models/patron.rb"
require 'pry'
# prompt = TTY::Prompt.new
# prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))


welcome
new_customer
drink = first_prompt
find_drink
patron = Patron.last




binding.pry
