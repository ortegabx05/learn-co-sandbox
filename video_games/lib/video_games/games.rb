class VideoGames::Games
  
attr_accessor :name, :month, :date
    @@all = []
  
  def initialize(name,month)
    @name = name
    @month = month
    save
  end
  
  def save
    @@all << self
  end
  
end