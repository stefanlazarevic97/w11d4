class PokeMove < ApplicationRecord
  belongs_to :move
  belongs_to :pokemon
end
