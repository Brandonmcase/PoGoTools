class CreatePokemonBases < ActiveRecord::Migration
  def change
    create_table :pokemon_bases do |t|
      t.integer :pokedex_number
      t.string :name
      t.integer :stamina
      t.integer :attack
      t.integer :defense
      t.timestamps null: false
    end

    add_index :pokemon_bases, :pokedex_number
    add_index :pokemon_bases, :name
  end
end
