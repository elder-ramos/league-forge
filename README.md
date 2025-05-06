## Resumo

Este projeto é um sistema de gestão de campeonatos de FIFA construído sobre o **Laravel**, framework PHP com sintaxe elegante e vasta comunidade, aproveitando suas ferramentas nativas como **Eloquent ORM**, **migrations** e **artisan** para abstrair a complexidade do banco de dados e acelerar o desenvolvimento.

## Tecnologias

* **Framework**: Laravel (12.x)
* **Banco de Dados**: PostgreSQL (via Eloquent)
* **Dependências**: Composer para gestão de pacotes e Artisan para linha de comando.

## Instalação

1. Clone o repositório:

   ```bash
   git clone https://github.com/elder-ramos/league-forge.git
   cd league-forge
   ```
2. Instale as dependências PHP:

   ```bash
   composer install
   ```
3. Configure o ambiente:

   ```bash
   cp .env.example .env
   php artisan key:generate
   ```
4. Ajuste as variáveis de conexão no `.env` (DB\_HOST, DB\_PORT, DB\_DATABASE, DB\_USERNAME, DB\_PASSWORD).

## Migrations & Seeds

* Crie as tabelas no PostgreSQL com:

  ```bash
  php artisan migrate
  ```
* (Opcional) Popule dados de exemplo:

  ```bash
  php artisan db:seed
  ```

## Estrutura do Projeto

* **app/Models**: definições de `User`, `Championship`, `Team`, `Match` e `Ranking`
* **database/migrations**: scripts que criam as tabelas conforme o modelo relacional descrito
* **app/Http/Controllers**: controladores RESTful para CRUD de campeonatos, equipes e partidas
* **routes/web.php**: registro das rotas web do sistema
* **resources/views**: templates Blade para interface básica (opcional) ([Mastering Laravel][4])

## Execução

Inicie o servidor de desenvolvimento com Artisan:

```bash
php artisan serve
```

Por padrão o sistema ficará disponível em `http://127.0.0.1:8000`.
