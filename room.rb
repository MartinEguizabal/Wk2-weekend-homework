class Room

  attr_reader(:name, :capacity, :playlist, :entry_fee)
  attr_accessor(:guests)

  def initialize(name, capacity, playlist, entry_fee)
    @name = name
    @capacity = capacity
    @playlist = playlist
    @entry_fee = entry_fee
    @guests = []
    
  end

  def count_guests
    return @guests.length()
  end

  def add_guest_to_room(guest)
    if guest.class == Array
      for person in guest
        if count_guests < @capacity
          @guests << person
          
        else
          return "Oops, sorry the room's full!"
        end
      end
    else
      if count_guests < @capacity
        @guests << person
      else
        return "Oops, sorry the room's full!"
      end
    end
  end


end