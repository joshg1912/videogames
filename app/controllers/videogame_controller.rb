class VideogameController < ApplicationController
    def index
        videogame = VideoGame.all
        render json: videogame
    end
end
