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
     doc = Nokogiri::HTML(open("https://www.ign.com/upcoming/games"))
   
    games = doc.css("button.jsx-3959444234.title.link")

    games.each do |g|
     name = g.text
    
    VideoGames::Games.new(name,month)
  end
end
  
end
