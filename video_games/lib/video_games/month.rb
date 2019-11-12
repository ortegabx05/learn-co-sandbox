  class VideoGames::Month
  
attr_accessor :name
  
    @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    VideoGames::Scraper.scrape_months if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
  
end