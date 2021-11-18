class VideogameController < ApplicationController
    def index
        videogame = VideoGame.all
        render json: videogame
    end

    def show
        videogame = VideoGame.find(params[:id])
        render json: videogame
    end

    def create
        videogame = VideoGame.new(
            name: params[:name],
            year: params[:year],
            plot: params[:plot],
            user_id: params[:id], #must change when authentication is implemented
        )
        if videogame.save
            render json: videogame
        else
            render json: {errors: videogame.errors}, status:401
        end
    end




end
