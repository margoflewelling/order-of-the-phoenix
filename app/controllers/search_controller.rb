class SearchController < ApplicationController

  def index
    @house = params["house"]
    search_results = SearchResults.new
    @wizards = search_results.get_wizard(params["house"])
  end

end
