
require 'httparty'
require 'pp'

class StarWarsInfo

  NUM_FILMS = 7

  def initialize
  end

  def get_info
    @film_crawls = []
    (1..NUM_FILMS).each do |i|
      @api_call = "http://swapi.co/api/films/#{i}/"
      response = HTTParty.get( @api_call )
      @film_crawls[i] = response["opening_crawl"]
      sleep(1.5)
    end
    @film_crawls
  end

end

