class AddDescriptionsToNews < ActiveRecord::Migration
  def change
    add_column :news, :description_it, :text
    add_column :news, :description_de, :text
    add_column :news, :description_da, :text
    add_column :news, :description_es, :text
    add_column :news, :description_el, :text
    add_column :news, :description_hu, :text
  end
end
