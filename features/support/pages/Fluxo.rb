class Fluxo
    include Capybara::DSL

    def busca_google(site)
        visit(DATA[$ambiente]['site_busca'])
        assert_selector(EL['busca_google'], visible: true) 
        all(EL['busca_google'])[0].set(site)
        all(EL['btn_buscar_google'])[0].click
        all(EL['printi'])[1].click
    end

    def busca_printi(produto)
        assert_selector(EL['input_buscar'], visible: true) 
        all(EL['input_buscar'])[0].set(produto)
        all(EL['btn_buscar_print'])[0].click
        if produto != 'Inexistente'
            all(EL['mais_produtos'])[0].click
            all(:xpath, EL['buscar_segundo'])[0].click
        else
        end
    end

    def validacao_busca(busca)
        link = 'https://www.printi.com.br/busca?p=' + busca
        assert_current_path(link) == true
        print "A url '#{link}' é compatível com a busca"
    end

    def validacao_busca_sem_resultado
        texto = 'Nenhum produto encontrado'
        assert_selector(EL['result'], visible: true, text: texto)

    end


end

