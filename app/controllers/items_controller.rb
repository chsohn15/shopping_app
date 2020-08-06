class ItemsController < ApplicationController

    def index
        if params[:size] == "S"
            @items = Item.size_s
        elsif params[:size] == "M"
            @items = Item.size_m
        elsif params[:size] == "L"
            @items = Item.size_l
        elsif params[:size] == "XL"
            @items = Item.size_xl
        else
            @items = Item.all
        end
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

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to items_path
    end

    private

    def item_params
        params.require(:item).permit(:name, :price, :brand, :color, :size, :img_url)
    end
end
