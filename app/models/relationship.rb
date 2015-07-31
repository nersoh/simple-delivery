class Relationship < ActiveRecord::Base
	belongs_to :item
	belongs_to :pedido

	validates_uniqueness_of :item_id, scope: :pedido_id
end
