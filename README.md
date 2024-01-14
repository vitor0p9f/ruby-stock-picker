<div align = "center">
  <p>This README is available in the following languages:</p>
  <br/>
  
  <a href = "https://github.com/vitor0p9f/ruby-stock-picker/blob/main/README.en.md" target="_blank">
    <img src="https://img.shields.io/badge/Language-English-blue"/>
  </a>
</div>

<div align="center">
  
  # Repositório de estudo - Ruby stock picker
</div>

Este projeto foi desenvolvido com o objetivo de aprender mais sobre a linguagem de programação Ruby e seus conceitos, por meio da aplicação dos mesmos na construção de um programa que recebe um array de valores diários da unidade de um determinado produto, sendo o índice de cada posição do array a representação de um dia, com os dias começando a partir do 0. O programa retorna ao usuário um array com duas posições, sendo a primeira delas o melhor dia para a compra e a segunda posição o melhor dia para a venda da unidade do produto, de modo que os dias sejam escolhidos de uma forma onde haja o maior lucro possível, lembrando que o produto deve ser adquirido para que a venda possa ser realizada.

## :gem: Gems utilizadas

* Rspec

## :page_facing_up: Padrões de projeto utilizados

* TDD(_Test Driven Development_)
* Conventional commits

## :pushpin: Conhecimentos adquiridos

* Como aplicar o TDD a projetos.
* Como utilizar Docker para criar contêineres de aplicações.
* Escrevendo melhores mensagens de commit com os padrões do conventional commits.
* Loops em Ruby.
* Input e output de informações em Ruby.
* Manipulação de arrays utilizando os métodos _slice_, _reject_ e _delete_.

## :triangular_flag_on_post: Desafios encontrados

## :rocket: Executando o projeto 

### 1. Clone o repositório em sua máquina

Após o repositório estar em sua máquina, entre no diretório recém clonado.

Para executar este projeto em sua própria máquina, você pode escolher entre as opções:

* Executar o projeto usando Docker.
* Executar o projeto instalando as dependências.

### :whale2: Utilizando o Docker

#### :construction: Requisitos

* Ter o Docker instalado e configurado em sua máquina.

#### 2. Monte uma imagem do projeto utilizando o seguinte comando:

```bash
docker build -t ruby-stock-picker .
```

A imagem criada terá o mesmo nome do projeto.

#### 3. Crie um contêiner com base na imagem recém criada utilizando o comando:

```bash
docker run -it --name ruby-stock-picker ruby-stock-picker
```

O comando acima utilizará a imagem criada anteriormente para criar um contêiner com o nome do projeto.

Após rodar o comando acima, o terminal do contêiner deve abrir automaticamente, já executando o código do projeto.

Para executar o projeto novamente, sem criar um novo contêiner, basta rodar o seguinte comando:

```bash
docker start -i ruby-stock-picker
```

### :link: Instalando as dependências

#### :construction: Requisitos

* Ter o Ruby instalado em sua máquina
* Aconselho a utilizar ferramentas como RVM ou rbenv para permitir a instalação de Gems sem permissão de administrador.

#### 2. Instale as dependências do projeto rodando o comando:

```bash
bundle install
```

#### 3. Execute o projeto rodando o comando:

```bash
ruby stock_picker.rb
```
