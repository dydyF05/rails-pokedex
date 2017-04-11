class PokemonsController < ApplicationController
    before_action :set_pokemon, only: [:show, :edit, :update, :destroy]
    def index
        # le @ rend la variable accessible à la view
        @pokemons = Pokemon.all
    end

    def show
    end

    def new
        @pokemon = Pokemon.new
    end

    def create
        # params contient les parametres envoyés par le formulaire
        #require(:pokemon) permet de récupérer l'objet form nommé pokemon
        #permit permet de restreindre les champs que l'on veut récuperer sur le form
        # on one à Pokemon.new les paramètres les paramètres cibles du formulaire
        @pokemon = Pokemon.new pokemon_params
        if @pokemon.save
            redirect_to @pokemon
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @pokemon.update pokemon_params
            redirect_to @pokemon
        else
            render 'set_pokemon'
        end
    end

    def destroy
        @pokemon.destroy
        redirect_to pokemons_path
    end

    private

    def set_pokemon
        @pokemon = Pokemon.find(params[:id])
    end

    def pokemon_params
        params.require(:pokemon).permit(:name, :number, :level, :health_points, :type_id)
    end
end
