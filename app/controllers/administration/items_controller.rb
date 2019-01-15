# frozen_string_literal: true

module Administration
  class ItemsController < AdministrationController
      before_action :set_item, only: [:update]
      def index
       @items = Item.all.order(:original_price)
      end

    def show
      set_item
    end

    # def edit
    #   set_item
    # end

    def update
      if @item.update(item_params)
        redirect_to administration_items_path, notice: "L'article a été correctement mis à jour"
      else
        redirect_back fallback_location: root_path, alert: "L'article n'a pas été mis à jour"
      end
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
      params.require(:item).permit(:discount_percentage)
    end

  end
end

