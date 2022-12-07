# language: pt
# encode: UTF-8

@buscar
Funcionalidade: Validar o fluxo busca de produto no site da Printi
   

@buscar_1  
Esquema do Cenario: Usuário Busca por um produto na página da Printi e consegue encontrá-lo
    Dado que acesso o mecanismo de busca Google buscando pelo site da 'Printi'
    Quando realizo uma busco pelo produto <Produto> 
    Entao valido que fui direcionado para o resultado da busca por <Produto> 

Exemplos: 
|Produto                  |
|"Caneca"                 |
|"Caderno"                |
|"Adesivo"                |
|"Flyer"                  |

@buscar_2
Cenario: Usuário Busca por um produto na página da Printi e não consegue encontrá-lo
    Dado que acesso o mecanismo de busca Google buscando pelo site da 'Printi'
    Quando realizo uma busco pelo produto 'Inexistente'
    Então valido que nenhum produto foi encontrado