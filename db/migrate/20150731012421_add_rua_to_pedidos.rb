class AddRuaToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :rua, :string
  end
end
