class Api::ItemsController < ApplicationController
    def index
        @pokemon = Pokemon.find_by(id: params[:pokemon_id])
        @items = @pokemon.items
        render :index
    end

    def create
        @item = Item.new(item_params)
        @item.pokemon_id = params[:pokemon_id]

        if @item.save
            render :show
        else
            render json: @item.errors.full_messages, status: :unprocessable_entity
        end
    end

    def update
        @item = Item.find_by(id: params[:id])

        if @item.update(item_params)
            render :show
        else
            render json: @item.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        @item = Item.find_by(id: params[:id])
        @item.destroy
        render json: { id: @item.id }
    end

    private

    def item_params
        params.require(:item).permit(:name, :price, :happiness, :image_url )
    end

end