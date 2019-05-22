class AddPhotoseedToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :photoseed, :string
  end
end
