class AddNumeroToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :numero, :string
  end
end
