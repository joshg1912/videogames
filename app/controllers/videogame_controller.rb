class VideogameController < ApplicationController
    skip_before_action :verify_authenticity_token

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
            user_id: params[:user_id],
        )
        if videogame.save
        render json: videogame
        else
            render json: videogame.errors
        end
    end

    def update
        videogame = VideoGame.find_by(id: params[:id])

        videogame.name = params["name"] || videogame.name
        videogame.year = params["year"] || videogame.year
        videogame.plot = params["plot"] || videogame.plot

        if videogame.save
            render json: videogame
        else
            render json: videogame.errors
        end

    end




end
