class AddDescriptionToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :description, :text
  end
end
