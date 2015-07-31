class PedidosController < ApplicationController
	before_action :set_pedido, only: [:show, :edit, :update, :destroy]

  def index
  	@pedidos = Pedido.all
  end

  def new
  	@pedido = Pedido.new
    @carnes = Item.carnes
    @acompanhamentos = Item.acompanhamentos
  end

  def create
  	@pedido = Pedido.new(pedido_params)
    @carnes = Item.carnes
    @acompanhamentos = Item.acompanhamentos

  	if @pedido.save
      #flash[:success] = "Pedido realizado com sucesso"
  		render 'success'
    else
      render :new
  	end
  end


  private

  def pedido_params
  	params.require(:pedido).permit(:rua, :numero, :referencia, :item_ids => [])
  end
  
  def set_pedido
  	@pedido = Pedido.find(params[:id])
    @carnes = Item.carnes
    @acompanhamentos = Item.acompanhamentos
  end
end
