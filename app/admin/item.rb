ActiveAdmin.register Item do

	permit_params :descricao, :tipo

	index do
		column :id
		column "Descrição", :descricao
		column :tipo do |item|
			item.tipo.humanize
		end
		actions
	end

	form do |f|
		f.inputs "Detalhes" do
			f.input :tipo, as: :select, collection: Item.tipos.map { |item, value| ["#{item.humanize}", item] }
			f.input :descricao
		end
		f.actions
	end
end
