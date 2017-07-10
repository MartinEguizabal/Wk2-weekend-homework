class Bartab

  attr_accessor(:amount)

  def initialize(amount)
    @amount = amount
  end

  def add_entry_fee(guest, room)
    case guest
      when @guest1
        return @guest1_tab.amount += room.entry_fee
      when @guest2
        return @guest2_tab.amount += room.entry_fee
      when @guest3
        return @guest3_Tab.amount += room.entry_fee
    end
  end

end