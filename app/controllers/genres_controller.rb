class GenresController < ApplicationController

    def show
        @genre = Genre.find(params[:id])
        @genre
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(genre_params)
        redirect_to genre_path(@genre.id)
    end

    def index

    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(genre_params)
        @genre.save
        redirect_to genre_path(@genre.id)
    end



    private
    def genre_params
        params.require(:genre).permit(:name)
    end
end
