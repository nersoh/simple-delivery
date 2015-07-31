require 'rails_helper'

RSpec.feature "Pedidos", type: :feature do
	before :each do
    create_item("Peixe", "Carne")
    create_item("Arroz", "Acompanhamento")
	end
  scenario "Cliente faz um pedido" do
    visit new_pedido_path

    all("input[type=checkbox]").each do |checkbox|
    	checkbox.set(true)
    end

    fill_in "pedido_rua", with: "My address info"
    fill_in "pedido_numero", with: "000"
    click_button("Finalizar pedido")

    expect(page).to have_text "Pedido realizado com sucesso"
    expect(page).to have_text("Peixe")
    expect(page).to have_text("Arroz")
  end
end
