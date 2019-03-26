class River
attr_accessor :name, :fish

  def initialize(name)
    @name = name
    @fish = []
  end

  def add_fish(fish)
    @fish.push(fish)
  end


  def fish_count()
    return @fish.count()
  end

  # def add_fish(name)
  #   @fish.push(name)
  # end

  def take_one_fish
    @fish.pop
  end

  def remove_fish(name)
    @fish.delete(name)
  end








end
