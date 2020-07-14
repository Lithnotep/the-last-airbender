class SearchController < ApplicationController
  def index
    binding.pry
    search = AirbenderSearch.new
    @characters = characters(params[:nation])
  end
end
