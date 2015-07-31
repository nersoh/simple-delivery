require 'rails_helper'

RSpec.describe Pedido, type: :model do
  before :each do
    @pedido = build(:pedido)
  end

  it "is valid" do
  	expect(@pedido).to be_valid
  end

  it "has at least one item (carne or/and acompanhamento)" do
  	expect(@pedido.items.size).to be > 0
  end

  it "has rua" do
  	@pedido.rua = nil
  	expect(@pedido).not_to be_valid
  end

  it "has numero" do
  	@pedido.numero = nil
  	expect(@pedido).not_to be_valid
  end
end
