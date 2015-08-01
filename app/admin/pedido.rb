ActiveAdmin.register Pedido do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
	
	permit_params :rua, :numero, :referencia, item_ids: []

	form do |f|
		f.inputs "Items" do
      f.input :items, label: "Carnes", as: :check_boxes,
      	collection: Item.carnes.map{|item| [item.descricao, item.id, 
      		{checked: f.object.items.include?(item)}]}

      f.input :items, label: "Acompanhamentos", as: :check_boxes, 
      	collection: Item.acompanhamentos.map{|item| [item.descricao, item.id, 
      		{checked: f.object.items.include?(item)}]}
    end
		f.inputs "Endereço" do
			f.input :rua
			f.input :numero
			f.input :referencia
		end
		f.actions
	end

	index do
		column "Pedido", sortable: :id do |pedido|
			"##{pedido.id}"
		end
		column "Efetuado em", sortable: :created_at do |pedido|
			pedido.created_at.strftime("%Y %B %d at %I:%M %p")
		end

		column "Items" do |pedido|
			pedido.list_items
		end
		column :rua
		column :numero
		column :referencia do |pedido|
			pedido.referencia.blank? ? 'Não Informado' : pedido.referencia
		end
		actions
	end

end
