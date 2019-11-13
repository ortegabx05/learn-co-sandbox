class VideoGames::Games
  
attr_accessor :name, :month, :date
    @@all = []
  
  def initialize(name,month)
    @name = name
    @month = month
    add_to_month
    save
  end
  
  def self.all
    @@all
  end
  
  def add_to_month
    @month.get_games << self unless @month.get_games.include?(self)
  end
  
  def save
    @@all << self
  end
  
end