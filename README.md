# Livecode: No Database Airbnb

Vamos criar uma versão simples do Airbnb, mas sem usar banco de dados. Em vez
disso, usaremos um arquivo JSON para armazenar os dados dos imóveis.

Vamos usar TDD (Test Driven Development) para garantir que nosso código esteja
funcionando corretamente.

A parte do frontend será feita com Bootstrap (que já está incluído no
`application.html.erb`).

## TDD

Vamos usar testes de sistema, que permitem testar a aplicação como um todo,
incluindo o frontend, como se fosse um usuário real. Usaremos o Minitest, que já
vem com o Rails, e o Headless Chrome para rodar os testes.

O Headless Chrome é uma versão do navegador Chrome que roda sem interface
gráfica, ideal para testes automatizados.

### Para gerar um arquivo de teste de sistema

Rodar o comando:

```bash
rails generate system_test <nome_do_teste>
```

### Exemplo de teste de sistema:

```ruby
# test/system/flats_test.rb
class FlatsTest < ApplicationSystemTestCase
  test "visiting flats page" do
    visit "/"

    assert_selector "h1", text: "Flats"
  end
end
```

### Para rodar os testes

Rodar o comando:

```bash
rails test:system
```

## Listar todos os flats

Vamos usar este arquivo JSON:
https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json

```ruby
require "open-uri"

url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
flats = JSON.parse(URI.parse(url).read)
```

## Ver os detalhes de um flat
