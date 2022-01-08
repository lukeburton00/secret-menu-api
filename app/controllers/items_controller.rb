class ItemsController < ApplicationController
    def index
        @items = Item.all
        render json: @items
    end

    def show
        @item = Item.find(params[:id])
        render json: @item

    def create
        @item = Item.create(
            menu_name: params[:menu_name],
            restaurant_name: params[:restaurant_name],
            menu_description: params[:menu_description]
            )
            render json: @item
    end

    def update
        @item = Item.find(params[:id])
        @item.update(
            menu_name: params[:menu_name],
            restaurant_name: params[:restaurant_name],
            menu_description: params[:menu_description]
            )
            render json: @item
    end

    def destroy
        @items = Item.all
        @item = Item.find(params[:id])
        Item.destroy
        render json: @items
    end
end
