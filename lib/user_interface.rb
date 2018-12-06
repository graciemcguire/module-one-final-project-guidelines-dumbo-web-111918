require "pry"
# prompt = TTY::Prompt.new
# database = {}
# puts "What is your name?"
# input = gets.chomp
# puts "What's your age?"
# input_2 = Integer(gets.chomp)
# database[input.to_sym] = input_2
def welcome
  puts "They Did Surgery On A Grape (The Bar)"
end

def new_customer
  puts "What is your name?"
  patron_name = gets.chomp
  Patron.create(name: patron_name, favorite_drink: nil, tab: 0)
  puts "Nice to meet you, #{patron_name}"
end

#if name is in database say the usual? or somthing and pull from user.favorite drinks,
#else, go through first_prompt process


##this method will update a hash with the user choices
##and then they will be compared to seed data and
##drinks will be filtered out and selected depending on choices.
def first_prompt
  drink = {}
  prompt = TTY::Prompt.new
  drink["type"] = prompt.select("How do you like it?", %w(Basic Classic House-Specials Straight-Up))
  drink["base"] = prompt.select("Do you have a liquor preference?", %w(Whiskey Vodka Tequila Gin))
  drink["price"] = prompt.select("Any plans for the evening?", ["No, I have to work tomorrow.", "I'm gonna drown my sorrows."])
end

def find_drink
  Drink.all.find do |drink|
    binding.pry
  end
end

def close_out
  self.tab = 0
end





#ask how do you like it?
  #it's great >> adds to favorite drink for user
  #it's great i'll have another >> adds to favorite drink for user & adds another to tab
  #it's gross, i'll close out >> goes to close out method

#keep it open or close it out?
    #open
    #asks if you can get them anything else?
        #yes i'll have another >> returns last drink they had and adds to tab
        #i'll try something else returns to choice_one method
    #close out returns close out method



##NEED TO DO####

  # - create favorite drink thing for user?
  # - figure out how to make everything connect?
  # - create tab
  # - fourth_prompt (how is it?) method
  # - create close out method
  # - open or close out method/ prompt



0
