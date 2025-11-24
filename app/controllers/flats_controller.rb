class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats_response = URI.parse(url).read # fazemos a requisição HTTP para pegar o JSON
    @flats = JSON.parse(flats_response) # pegamos a resposta (uma string gigante) e transformamos em um array de hashes
    # @flats agora está disponível na view index.html.erb
  end
end
