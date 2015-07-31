require 'rails_helper'

RSpec.describe PedidosController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns @pedidos" do
      pedido = create(:pedido)
      get :index
      expect(assigns(:pedidos)).to eq([pedido])
    end

    it "renders index" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  # describe "POST #create" do
  #   it "creates pedido" do
  #     #pedido = build(:pedido)
  #     expect { 
  #       post :create, pedido: attributes_for(:pedido, :items => [ build(:item) ])
  #     }.to change(Pedido, :count).by(1)
  #   end
  #end

end
