json.array! @pokemons do |pokemon|
    json.id pokemon.id
    json.number pokemon.number
    json.name pokemon.name

    if pokemon.captured
        json.image_url pokemon.image_url
    else 
        json.image_url "/images/unknown.png"
    end

    json.captured pokemon.captured
end