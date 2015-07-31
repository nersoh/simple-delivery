class AddTipoToItems < ActiveRecord::Migration
  def change
    add_column :items, :tipo, :integer
  end
end
