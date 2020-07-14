class SearchController < ApplicationController
  def index
    search = AirbenderSearch.new
    binding.pry
    @characters = search.characters(params[:nation])
  end
end
