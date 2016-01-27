class ObiwanreportsController < ApplicationController

  def index
    # get all crawls and publish
    @star_wars = StarWarsInfo.new
    crawl_strings = @star_wars.get_info
    pp crawl_strings
  end


end