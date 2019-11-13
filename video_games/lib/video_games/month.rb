class VideoGames::Month
  
attr_accessor :name, :games
  
    @@all = []
  
  def initialize(name)
    @name = name
    @games = []
    save
  end
  
  def self.all
    VideoGames::Scraper.scrape_months if @@all.empty?
    @@all
  end
  
  
  def get_games
    VideoGames::Scraper.scrape_games(self)  if @games.empty?
  end
  
  def save
    @@all << self
  end
  
end