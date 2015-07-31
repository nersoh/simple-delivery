class AddReferenciaToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :referencia, :string
  end
end
