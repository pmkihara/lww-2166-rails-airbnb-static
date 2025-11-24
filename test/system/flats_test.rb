require 'application_system_test_case'

class FlatsTest < ApplicationSystemTestCase
  test 'visiting the list of flats' do
    visit '/'

    assert_selector 'h1', text: 'Flats' # busca um h1 com o texto Flats
    assert_selector 'h2', text: 'Charm at the Steps of the Sacre Coeur/Montmartre' # busca um h2 com o texto do nome do flat
  end
end
