  class VideoGames::Month
  
attr_accessor :name
attr_writer :games 
  
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
  
  def games
    VideoGames::Scraper.scrape_games(self) if @egames.empty?
    @games
  end
  
  def save
    @@all << self
  end
  
end