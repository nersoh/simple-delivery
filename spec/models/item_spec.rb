require 'rails_helper'

RSpec.describe Item, type: :model do
  before :each do
    @item = build(:item)
  end

  it "is valid" do
  	expect(@item).to be_valid
  end

  it "has a description" do
  	@item.descricao = nil
  	expect(@item).not_to be_valid
  end
  it "is 'Carne' type" do
    @item.tipo = 'carne'
    expect(@item.carne?).to be
  end
end
