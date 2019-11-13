require_relative "video_games/version"
require_relative "video_games/cli"
require_relative "video_games/month"
require_relative "video_games/scraper"
require_relative "video_games/games"

require 'pry'
require 'nokogiri'
require 'open-uri'

module VideoGames
  class Error < StandardError; end
  # Your code goes here...
end
