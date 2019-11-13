class VideoGames::Scraper
  
  def self.scrape_months
    doc = Nokogiri::HTML(open("https://www.ign.com/upcoming/games"))
   
    months = doc.css("div.jsx-190919334.month-container")

    months.each do |m|
     name = m.text
     VideoGames::Month.new(name)
  end
end


  def self.scrape_games(month)
    VideoGames::Games.new("sport game", month)
    VideoGames::Games.new("puzzle game", month)
  end
  
end
