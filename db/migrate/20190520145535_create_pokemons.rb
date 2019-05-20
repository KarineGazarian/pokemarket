class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :category
      t.integer :level
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
