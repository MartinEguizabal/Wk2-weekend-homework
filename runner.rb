require_relative('./guest.rb')
require_relative('./room.rb')
require_relative('./song.rb')

playlist3 = ["Welcome to the jungle", "Smells like teen spirit"]
room3 = Room.new("Goth", 1, playlist3)
puts room3.add_guest_to_room([@guest1, @guest2])

playlist1 = ["Yellow Submarine", "Patience", "California love", "Welcome to the jungle"]
@room1 = Room.new("Sing along", 15, playlist1)
guest3 = Guest.new("Jen", 10, "Yellow Submarine")
puts guest3.favourite_song(@room1)