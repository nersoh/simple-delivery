class Pedido < ActiveRecord::Base
	has_many :relationships

	has_many :items, through: :relationships

	validate :has_items

	validates_presence_of :rua, :numero

	#accepts_nested_attributes_for :items, allow_destroy: true

	def has_items
		unless (items.size) > 0
			errors[:base] << "Pedido não contém nenhum item."
		end
	end

	def carnes
		items.where(tipo: Item.tipos[:carne])
	end

	def acompanhamentos
		items.where(tipo: Item.tipos[:acompanhamento])
	end

	# def items_ids=(ids)
	# 	ids.each do |item|
	# 		relationships.create(item_id: item)
	# 	end
	# end

	# def items_ids()
	# 	result_ids = []
	# 	relationships.each do |rel|
	# 		result_ids << rel.item_id
	# 	end
	# 	result_ids
	# end
end
