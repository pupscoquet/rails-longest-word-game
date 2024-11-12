class GamesController < ApplicationController
  require "open-uri"
  require "json"


  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @answer = params[:answer]
    @letters = params[:letters].split

    url = "https://dictionary.lewagon.com/"
    @xxx = JSON.parse(URI.open(url).read)

    # Uri.open(url + @answer) do
    #   if @answer[:found] == false
    #     return
    #   else
    #     return
    #   end
    # end


    raise
  end
end
