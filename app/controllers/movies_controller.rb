class MoviesController < ApplicationController
  def index

  end

  def search
    title = params[:q]
    @response = RestClient.get "http://www.omdbapi.com/?s=#{title.gsub(" ", "+")}"
    @movies = JSON.parse(@response.body)["Search"]
  end

end
