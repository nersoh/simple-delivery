class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :pedido_id
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
