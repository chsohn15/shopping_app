class ItemsController < ApplicationController

    def index
        @items = Item.all 
    end

    def show
        id = params[:id]
        @item = Item.find(id)
    end

    def new
        @item = Item.new
    end

    def create
        item = Item.create(item_params)
        redirect_to item_path(item)
    end

    def edit
        @item = Item.find(params[:id])

    end

    def update
        @item = Item.find(params[:id])
        @item.update(item_params)
        redirect_to item_path(@item)
    end

    private

    def item_params
        params.require(:item).permit(:name, :price, :brand, :color, :size, :img_url)
    end
end
