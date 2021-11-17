class VideogameController < ApplicationController
    def index
        videogame = VideoGame.all
        render json: videogame
    end

    def show
        videogame = VideoGame.find(params[:id])
        render json: videogame
    end
end
