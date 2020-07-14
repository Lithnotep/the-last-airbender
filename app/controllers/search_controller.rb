class SearchController < ApplicationController
  def index
    search = AirbenderSearch.new
    @characters = search.characters
  end
end
