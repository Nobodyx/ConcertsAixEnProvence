class ConcertsController < ApplicationController
    def index
        @concerts = Concert.all
    end
    
    def show
        @concert = Concert.find(params[:id])
    end
    
    def new
        @concert = Concert.new
    end
    
    def create
        @concert = Concert.new(concert_params)
        
        if @concert.valid?
            @concert.save!
            redirect_to root_path
        else
            # réaffiche le template new pour avoir formulaire + erreurs
            render :new
        end
    end

    private

    def concert_params
      # n'autorise que ces paramètres
      params.require(:concert).permit(:artiste, :salle, :date, :description, :photo)
    end
end
