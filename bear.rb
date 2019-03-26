class Bear

attr_accessor :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count()
    @stomach.count
  end

  def add_to_stomach(item)
    @stomach << item
  end

  # def eat_fish_from_river(river, fish)
  #   for each_fish in river.fish
  #     add_to_stomach(each_fish)
  #   end
  #   river.remove_fish
  # end


  def eat_fish_from_river(river)
    add_to_stomach(river.fish.last)
    river.take_one_fish
  end

  def roars()
    return "Rooaar"
  end



end
