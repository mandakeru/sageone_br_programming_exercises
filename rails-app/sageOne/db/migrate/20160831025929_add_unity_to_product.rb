class AddUnityToProduct < ActiveRecord::Migration
  def change
    add_column :products, :unity, :string
  end
end
