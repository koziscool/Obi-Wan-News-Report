
require 'star_wars_info.rb'

class StarWarsPopulate

  NUM_FILMS = 7

  def self.run
    (1..NUM_FILMS).each do |i|
      @api_call = "http://swapi.co/api/films/#{i}/"
      response = HTTParty.get( @api_call )
      film_name = response[ "title" ]
      crawl_text = response["opening_crawl"]
      info = StarWarsInfo.create( :id => i, :film_name => film_name, :crawl_text => crawl_text)
      sleep(1.5)
    end
  end

end