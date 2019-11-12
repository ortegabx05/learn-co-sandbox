class VideoGames::Scraper
  
  def self.scrape_months
    doc = Nokogiri::HTML(open("https://www.ign.com/upcoming/games"))
   
    months = doc.css("div.jsx-190919334.month-container")

    months.each do |m|
     name = m.text
     VideoGames::Month.new(name)
  end
end

end
