# frozen_string_literal: true

module Administration
  class ItemsController < AdministrationController
      def index
       @items = Item.all
      end

    def show
      set_item
    end

    def edit
      set_item
    end

    def update
       set_item
      @item.update(item_params)
      redirect_to administration_items_path
    end

# @item = Item.find(params[:id])
#         @item.update
#         @item.save
#         redirect_to administration_items_path(@item.id)

    private

    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:discount_percentage, :original_price, :price, :has_discount)
    end

  end
end

