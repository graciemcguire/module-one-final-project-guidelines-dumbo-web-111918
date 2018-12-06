require "pry"

@@drink = {}

def welcome
  puts "They Did Surgery On A Grape (The Bar)"
end

def new_customer
  puts "What is your name?"
  patron_name = gets.chomp
  puts "Nice to meet you, #{patron_name}"
  Patron.create(name: patron_name, favorite_drink: nil, tab: 0)
end

##this method will update a hash with the user choices
##and then they will be compared to seed data and
##drinks will be filtered out and selected depending on choices.
def first_prompt
  prompt = TTY::Prompt.new
  @@drink["type"] = prompt.select("How do you like it?", %w(Basic Classic House-Special Straight-Up)).downcase
  @@drink["base"] = prompt.select("Do you have a liquor preference?", %w(Whiskey Vodka Tequila Gin)).downcase
  determing_strength = prompt.select("Any plans for the evening?", ["No, I have to work tomorrow.", "I'm gonna drown my sorrows."]).downcase
  @@drink
end

def find_drink(patron)
  chosen_drink = Drink.where({drink_type: @@drink["type"], base: @@drink["base"]})[0]
  puts "Here you go #{patron.name}, a nice glass of #{chosen_drink.name}"
  chosen_drink
end

def ask_fav_drink(drink)
   prompt = TTY::Prompt.new
   ask_if_fav = prompt.select("How is everything?", ["Great, I'll have another!", "I hate it! Close me out!"])
    # binding.pry
      if ask_if_fav == "Great, I'll have another!"
        # patron.fav_drink(drink)
        first_prompt
        find_drink(patron)
      end
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

  # - create close out method
  # - open or close out method/ prompt



0
