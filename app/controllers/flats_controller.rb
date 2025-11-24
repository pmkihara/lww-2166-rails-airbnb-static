class FlatsController < ApplicationController
  before_action :set_flat # chama o método set_flat antes de rodar as actions index e show

  def index
    # @flats (definido no método set_flat) agora está disponível na view app/views/flats/index.html.erb
  end

  def show
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i } # procuramos o flat com o id da URL
    # @flat agora está disponível na view app/views/flats/show.html.erb
  end

  private

  def set_flat
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    flats_response = URI.parse(url).read # fazemos a requisição HTTP para pegar o JSON
    @flats = JSON.parse(flats_response) # pegamos a resposta (uma string gigante) e transformamos em um array de hashes
  end
end
