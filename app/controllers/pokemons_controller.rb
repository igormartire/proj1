class PokemonsController < ApplicationController
  def capture
    pokemon = Pokemon.find_by(id: params[:id])
    pokemon.trainer = current_trainer
    pokemon.save
    redirect_to root_path
  end

  def damage
    pokemon = Pokemon.find_by(id: params[:id])
    owner_id = pokemon.trainer.id
    pokemon.health -= 10
    if pokemon.health <= 0
      pokemon.delete
    else
      pokemon.save
    end
    redirect_to trainer_path(owner_id)
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(name: pokemon_params[:name], level: 1, health: 100, trainer_id: current_trainer.id)
    if @pokemon.save
      flash[:notice] = "Your Pokemons is born. Congratz! All hail \""+@pokemon.name+"\"!"
      redirect_to trainer_path(current_trainer.id)
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      render 'new'
    end
  end

  def pokemon_params
    params.require(:pokemon).permit(:name)
  end


end
