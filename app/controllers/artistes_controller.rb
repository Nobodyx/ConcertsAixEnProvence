class ArtistesController < ApplicationController
    def show
        @artiste = Artiste.find(params[:id])
    end   
end
