class MoviesController < ApplicationController
  def index
  end

  def search
    title = params[:q]
    @response = RestClient.get "http://www.omdbapi.com/?s=#{title}"
    @movies = JSON.parse(response.body)
  end

end
