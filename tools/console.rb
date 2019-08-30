require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Airbnb

guest_1 = Guest.new("Xabi")
guest_2 = Guest.new("James")
guest_3 = Guest.new("Pablo")
guest_4 = Guest.new("Jeremiah")

listing_1 = Listing.new("Tel Aviv")
listing_2 = Listing.new("Sitges")
listing_3 = Listing.new("Mikonos")

trip_1 = Trip.new(listing_1, guest_1)
trip_2 = Trip.new(listing_1, guest_2)
trip_3 = Trip.new(listing_1, guest_3)
trip_4 = Trip.new(listing_2, guest_1)
trip_5 = Trip.new(listing_2, guest_2)
trip_6 = Trip.new(listing_2, guest_3)
trip_7 = Trip.new(listing_2, guest_4)
trip_8 = Trip.new(listing_3, guest_1)

#Bakery

bakery_1 = Bakery.new("Xabi")
bakery_2 = Bakery.new("James")

dessert_1 = Dessert.new("Cheesecake", bakery_1)
dessert_2 = Dessert.new("Panna cottta", bakery_1)
dessert_3 = Dessert.new("Light Chocolate mouse", bakery_2)


ingredient_1 = Ingredient.new("Brown suggar", dessert_1, 18)
ingredient_2 = Ingredient.new("Jelly", dessert_1, 2)
ingredient_3 = Ingredient.new("Cream", dessert_1, 30)
ingredient_4 = Ingredient.new("Milk",  dessert_1, 22)

ingredient_5 = Ingredient.new("White suggar", dessert_2, 20)
ingredient_6 = Ingredient.new("Crust", dessert_2, 15)
ingredient_7 = Ingredient.new("Butter", dessert_2, 35)
ingredient_8 = Ingredient.new("Cream Cheese", dessert_2, 25)

ingredient_9 = Ingredient.new("Stevia", dessert_3, 0)
ingredient_10 = Ingredient.new("Eggs", dessert_3, 16)
ingredient_11 = Ingredient.new("Chocolate 100%", dessert_3, 23)
ingredient_12 = Ingredient.new("Skimed Milk", dessert_3, 14)

# Imdb

robert = Actor.new("Robert Downey Jr.")
chris = Actor.new("Chris Hemsworth")
tom = Actor.new("Tom Holland")
toby = Actor.new("Toby Maguire")
andrew = Actor.new("Andrew Garfield")
scarlett = Actor.new("Scarlett Johansson")
charlie = Actor.new("Charlie Cox")


iron_man = Character.new("Iron Man", robert)
thor = Character.new("Thor", chris)
spider_man = Character.new("Spider Man", tom)
black_widow = Character.new("Black Widow", scarlett)
lucy = Character.new("Lucy", scarlett)
daredevil = Character.new("Daredevil", charlie)

avengers = Movie.new("Avengers")
avengers2 = Movie.new("Avengers 2")
avengers3 = Movie.new("Avengers 3")
daredevil_movie = Movie.new("Daredevil")

agents_of_shield = Show.new("Agents of Shield")
daredevil_show = Show.new("Daredevil")

show_ap1 = ShowAppearance.new(daredevil_show, daredevil)
show_ap2 = ShowAppearance.new(agents_of_shield, iron_man)
show_ap3 = ShowAppearance.new(agents_of_shield, black_widow)
show_ap4 = ShowAppearance.new(agents_of_shield, thor)
show_ap5 = ShowAppearance.new(agents_of_shield, spider_man)

movie_ap1 = MovieAppearance.new(avengers, iron_man)
movie_ap2 = MovieAppearance.new(avengers, black_widow)
movie_ap3 = MovieAppearance.new(avengers, thor)
movie_ap5 = MovieAppearance.new(avengers2, iron_man)
movie_ap6 = MovieAppearance.new(avengers2, black_widow)
movie_ap7 = MovieAppearance.new(avengers2, thor)
movie_ap8 = MovieAppearance.new(avengers, spider_man)
movie_ap9 = MovieAppearance.new(avengers3, iron_man)

#Gym
pure_gym = Location.new("Pure Gym")
virgin_active = Location.new("Virgin Active")

nico = Trainer.new("Nico")
lucy = Trainer.new("Lucy")
ben = Trainer.new("Ben")
ian = Trainer.new("Ian")

contract1 = Contract.new(pure_gym,nico)
contract2 = Contract.new(pure_gym,lucy)
contract3 = Contract.new(virgin_active,ben)
contract4 = Contract.new(virgin_active,ian)

xabi = Client.new("Xabi", nico)
fran = Client.new("Fran", nico)
endy = Client.new("Endy", nico)
miaw = Client.new("Miaw", ben)
harriet = Client.new("Harriet", ben)
ivan = Client.new("Ivan", lucy)
becca = Client.new("Becca", lucy)
danny = Client.new("Danny", ian)

#Silicon Valley

bird = Startup.new("Bird", "Xabi", "Bird.com")
dog = Startup.new("Dog", "James", "Dog.com")

richard = VentureCapitalist.new("richard", 122000)
jonathan = VentureCapitalist.new("jonathan", 1800)

bankia = FundingRound.new(bird, jonathan, "Series A", 200000)
savadell = FundingRound.new(dog, richard, "Series B", 1000)

Pry.start
