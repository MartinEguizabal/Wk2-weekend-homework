class Guest

  attr_reader :name, :money, :favourite_song

  def initialize(name, money, favourite_song)
    @name = name
    @money = money
    @favourite_song = favourite_song
  end

  def favourite_song(room)
    for song in room.playlist
      if song == @favourite_song
        return "Whooa"
      end
    end
  end
end