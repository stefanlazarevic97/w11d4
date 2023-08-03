class Api::PokemonController < ApplicationController
    def types
        pokemon_types = [
        "fire",
        "electric",
        "normal",
        "ghost",
        "psychic",
        "water",
        "bug",
        "dragon",
        "grass",
        "fighting",
        "ice",
        "flying",
        "poison",
        "ground",
        "rock",
        "steel"
        ]

        render json: pokemon_types
    end

    def index
        @pokemons = Pokemon.all
        render :index
    end

    def show
        @pokemon = Pokemon.find_by(id: params[:id])
        render :show
    end

    private

    def pokemon_params
        params.require(:pokemon).permit(
            :number,
            :name, 
            :attack, 
            :defense, 
            :poke_type, 
            :image_url,
            :captured
        )
    end
end
