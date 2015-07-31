class Item < ActiveRecord::Base
	enum tipo: %w(carne acompanhamento) 
	
	has_many :relationships
	has_many :pedidos, through: :relationships
	
	validates :descricao, presence: true, uniqueness: {case_sensitive: false}


	def self.carnes
		where(tipo: tipos[:carne])
	end

	def self.acompanhamentos
		where(tipo: tipos[:acompanhamento])
	end
end
