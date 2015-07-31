class AddPedidoToItems < ActiveRecord::Migration
  def change
    add_reference :items, :pedido, index: true, foreign_key: true
  end
end
