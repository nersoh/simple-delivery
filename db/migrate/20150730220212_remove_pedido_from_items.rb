class RemovePedidoFromItems < ActiveRecord::Migration
  def change
    remove_reference :items, :pedido, index: true, foreign_key: true
  end
end
