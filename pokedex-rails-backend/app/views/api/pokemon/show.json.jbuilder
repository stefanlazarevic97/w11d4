if @pokemon.captured
    json.image_url @pokemon.image_url
else 
    json.image_url "/images/unknown.png"
end

json.extract! @pokemon, :id, :number, :attack, :defense, :name

json.type @pokemon.poke_type

json.moves @pokemon.moves.map{ |move| move.name }

json.captured @pokemon.captured

json.createdAt @pokemon.created_at

json.updatedAt @pokemon.updated_at
