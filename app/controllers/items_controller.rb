class ItemsController < ApplicationController
	before_action :set_item, only: [:show, :edit, :update, :destroy]


	def new
		@item = Item.new
	end
	def create
		@item = Item.new(item_params)
		if @item.save
			redirect_to @item
		else
			render :new
		end
	end


	private

	def item_params
		params.require(:item).permit(:descricao, :tipo)
	end

	def set_item
		@item = Item.find(params[:id])
	end
end
