# Instalação

- docker-compose up

- docker-compose run --no-deps web rails new . -T --force --database=postgresql

- config: database.yml
- adicionar no default
  - host: db
  - username: posgres
  - passowrd: password
- Add 'rspec-rails' no Gemfile bloco development e test:
  - gem 'rspec-rails'
- executar o build novamente:

  - docker-compose build

- executar no container web:
  - docker-compose run web rails db:create
  - docker-compose run web rails db:migrate
