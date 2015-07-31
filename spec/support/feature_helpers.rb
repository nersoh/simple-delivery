module FeatureHelpers
	def create_item(descricao, tipo)
		visit new_item_url

		fill_in "item_descricao", with: descricao
		select(tipo, :from => 'item_tipo')
		click_button "Adicionar Item"
	end
end

include FeatureHelpers