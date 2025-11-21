# Projeto Taurus - Gestão de Clientes e Planos

Este é um projeto de estudos em Ruby on Rails, focado em construir um sistema de gestão de clientes (CRUD), planos e associações, seguindo as melhores práticas do padrão MVC.

---

## 🚀 Funcionalidades Implementadas

* **Clientes (Customers):**
    * Cadastro, Leitura, Atualização e Deleção (CRUD) de clientes.
    * Validação de campos (Nome, Email, Aniversário).
    * Campo de CPF com validação de 11 dígitos.
    * Busca de clientes por CPF na página de listagem.

* **Planos (Plans):**
    * Cadastro, Leitura, Atualização e Deleção (CRUD) de planos.
    * Campos para Conteúdo (Descrição) e Duração (em dias).
    * Formatação de valores para (R$) Real Brasileiro nas views.

* **Associações (Banco de Dados):**
    * Relacionamento (1-para-N) entre Clientes e Planos.
    * Um Cliente `belongs_to` (pertence a) um Plano.
    * Um Plano `has_many` (tem muitos) Clientes.
    * Exibição dos detalhes do Plano (Nome, Conteúdo, Duração) na página do Cliente.

* **Ambiente:**
    * Projeto configurado para rodar tanto em macOS quanto em Windows (com solução de dependências do SQLite).

---

## 🛠️ Tecnologias Utilizadas

* **Ruby** (Versão 3.3.0)
* **Ruby on Rails** (Versão 8.1.0)
* **SQLite3** (Banco de dados)
* **Puma** (Servidor Web)

---

## 🏁 Como Rodar o Projeto Localmente

1.  Clone o repositório:
    `git clone https://github.com/sandromuniz89/projeto-taurus-rails.git`
2.  Entre na pasta do projeto:
    `cd projeto-taurus-rails`
3.  Instale as dependências:
    `bundle install`
4.  Crie e configure o banco de dados:
    `rails db:create`
    `rails db:migrate`
5.  Popule o banco com os planos iniciais:
    `rails db:seed`
6.  Inicie o servidor:
    `rails server`
7.  Acesse `http://localhost:3000` no seu navegador.