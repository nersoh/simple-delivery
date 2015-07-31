class Pedido < ActiveRecord::Base
	has_many :relationships

	has_many :items, through: :relationships

	validate :has_items

	validates_presence_of :rua, :numero

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

end
