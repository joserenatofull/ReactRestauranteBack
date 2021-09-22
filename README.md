# Restaurante - Backend

Backend para um _aplicativo conceito_ de um sistema de restaurante.

Desenvolvedores:

- Gabriela Cristina Manzo da Silva - [Gitlab](https://gitlab.com/gabriela.silva)
- Kessyus Fófano dos Santos - [Gitlab](https://gitlab.com/kessyus)

## Instalação e início

```console


$yarn add sequelize -g #adicona sequelize
$npx sequelize-cli db:create
$npx sequelize-cli db:migrate
$npx sequelize-cli db:seed:all
$yarn run dev
$yarn run create-db #cria o banco
$ yarn install      # instala as dependências
$ yarn reset        # cria um banco de testes com as tabelas e dados fake
$ yarn start        # inicia o servidor
#Usuario:Administrador
#senha:123456
#f1017c4ff15a6a6a2d838683fceccd76
```

## Padrão de rotas

Para saber o padrão de rotas utilize importe a collection do Postman do arquivo "collections.json".