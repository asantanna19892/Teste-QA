
# Teste Tecnico - QA

O teste proposto baseia-se em criar um teste automatizado que faça o fluxo de ponta a ponta de um cliente que:


1 - Abra o google e pesquisar pela Printi;

2 - Entre no primeiro link não patrocinado;

3 - Pesquise um produto no site (cartão de visita, flyer, caneca).


Para isto, no E-commerce da Printi foram buscados os seguintes produtos: 


1 - "Caneca";

2 - "Caderno"; 

3 - "Adesivo";

4 - "Flyer".

O automação foi subdividida em cinco cenários.

- Primeiro Cenário: Usuário Busca pelo produto "Caneca" na página da Printi e consegue encontrá-lo;
- Segundo Cenário: Usuário Busca pelo produto "Caderno" na página da Printi e consegue encontrá-lo;
- Terceiro Cenário: Usuário Busca pelo produto "Caneca" na página da Printi e consegue encontrá-lo;
- Quarto Cenário: Usuário Busca pelo produto "Flyer" na página da Printi e consegue encontrá-lo;
- Quinto Cenário: Usuário Busca por um produto na página da Printi e não consegue encontrá-lo.


## BDD

Funcionalidade: Validar o fluxo busca de produto no site da Printi
   

@buscar_1  
Esquema do Cenario: Usuário Busca por um produto na página da Printi e consegue encontrá-lo

    Dado que acesso o mecanismo de busca Google buscando pelo site da 'Printi'

    Quando realizo uma busco pelo produto <Produto> 

    Entao valido que fui direcionado para o resultado da busca por <Produto> 

Exemplos: <br /> 
|Produto                  |<br /> 
|"Caneca"                 |<br /> 
|"Caderno"                |<br /> 
|"Adesivo"                |<br /> 
|"Flyer"                  |<br /> 

@buscar_2 <br /> 
Cenario: Usuário Busca por um produto na página da Printi e não consegue encontrá-lo

    Dado que acesso o mecanismo de busca Google buscando pelo site da 'Printi'

    Quando realizo uma busco pelo produto 'Inexistente'

    Então valido que nenhum produto foi encontrado


### Linguagem Utilizada

Ruby

### Pré-requisitos:

Antes de começar, Será necessário ter instalado em sua máquina as ferramentas: [Ruby] e um editor de texto como o [VCode], além da ferramenta [Bundler] usada para gerenciar dependências Rubygems em bibliotecas Ruby.

A pasta Genfile será criada dentro do diretório a partir do comando: 

    $ bundle init

As Gems utilizadas foram:

gem 'capybara', '3.35.3' <br /> 
gem 'cucumber', '3.1.2' <br /> 
gem 'json' <br /> 
gem 'pry', '0.11.3' <br /> 
gem 'rspec', '3.6.0' <br /> 
gem 'screen-recorder' <br /> 
gem 'selenium-webdriver', '3.142.7'

    
 
### Construção

Os passos a seguir são necessários para a construção do teste.

-   Para instalar o bundler:

> $ sudo apt-get update

> $ sudo apt-get install bundler

-   Para criar o arquivo genfile

> $ bundle init

-   Para instalar as gems:

> $ bundle install

-   Para criar os diretórios e files:
    -   features
    -   features/step_definitions
    -   support
    -   support/env.rb

> $ cucumber --init

-   Para exercutar o teste:

> $ cucumber 

## Evidencias de Teste

As evidências de teste foram geradas na forma de vídeos de cada validação de cenário. As evidências em vídeo se encontram armazenadas na pasta data/video.


### Vídeos 

As evidências na forma de videos foram armazenadas na pasta data/video, A seguir, um preview da automação rodando em tela.

![EvidenciaTerminal](https://github.com/asantanna19892/Teste-QA/blob/main/data/video/buscar_1-Buscarumprodutonap%C3%A1ginadaPrinti-14ea033f-6b1b-44c4-9979-92b3a8413c0e.gif)


