class AddOnsaleToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :onsale, :boolean, default: true
  end
end
