Dado('que acesso o mecanismo de busca Google buscando pelo site da {string}') do |site_busca|  
    Evidencias.new.iniciando_filmagem
    Fluxo.new.busca_google(site_busca)
    
end
  
  
Quando('realizo uma busco pelo produto {string}') do |produto|
    Fluxo.new.busca_printi(produto)
end
  
Entao('valido que fui direcionado para o resultado da busca por {string}') do |busca|
    Fluxo.new.validacao_busca(busca)
end


Então('valido que nenhum produto foi encontrado') do
    Fluxo.new.validacao_busca_sem_resultado
end