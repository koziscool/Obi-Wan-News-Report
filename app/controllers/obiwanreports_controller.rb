class ObiwanreportsController < ApplicationController

  def index
    # get all crawls and publish
    @star_wars_infos = StarWarsInfo.all
    @star_wars_info = StarWarsInfo.new
  end

  #   @star_wars.each do | film |
  #     pp film.id
  #     pp film.film_name
  #     pp film.crawl_text
  #   end
  # end
end

