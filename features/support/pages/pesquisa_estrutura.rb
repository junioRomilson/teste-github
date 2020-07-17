class Pesquisar < SitePrism::Page
    
    def initialize
        @estrutura = Formulario.new
    end

    element :numero_ordem_input, '#numeroOrdem_input'
    element :pesquisar_input, '.btn-primary'
    element :justificativa_input, '#justificativa_input'
    element :autorizar_input, '#btn3'
    element :autorizar_ad_input, '#btn3'
    elements :quantidade_paginas_busca_alocacao, :xpath, '//ul[@class="pagination"]/li'
    elements :quantidade_paginas_busca_relatorio, :xpath, '//*[@id="resultadoPesquisa"]//div/nav/ul/li'
    elements :quantidade_paginas_busca_ordem, :xpath, '//missao-policial-autorizar//div/nav/ul/li'
    element :autorizacao_analisada_assessor_sim_input, 'div.radio:nth-child(1) > label:nth-child(1)'
    element :autorizacao_analisada_assessor_nao_input, 'div.radio:nth-child(2) > label:nth-child(1)'
    element :justificativa_necessidade_transporte_input, '#justificativaDias_input'

    element :campo_numero_solicitacao_alocacao_pesquisa, '#numeroSolicitacao_input'
    element :botao_pesquisar_alocacao, 'div.col-sm-2:nth-child(2) > pf-form-buttons:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1) > a:nth-child(1)'
    element :visualizar_integrantes, '.btn-outline-primary'

    def css_justificativa_necessidade_transporte_input
        "#justificativaDias_input"
    end
    
    def consultar_ordem(pesquisa)
        numero_ordem_input.click.set pesquisa
        pesquisar_input.click 
    end

    def justificativa(argumento)
        justificativa_input.click.set argumento
    end

    def justificativa_necessidade_transporte(argumento_just)
        justificativa_necessidade_transporte_input.click.set argumento_just
    end

    def autorizar 
        autorizar_input.click
    end

    def autorizar_ad 
        autorizar_ad_input.click
    end

    def autorizacao_analisada_assessor(condicao)
        if condicao.upcase == 'SIM'
            autorizacao_analisada_assessor_sim_input.click
        else
            autorizacao_analisada_assessor_nao_input.click
        end
    end
    def pequisar_omp_os(ordem, metodo)
        if metodo == 'Autoridade Determinante'
            sleep(7)
            @j = 7
        else
            @j = 9
        end
        @pagina = 1
        while @pagina <= quantidade_paginas_busca_ordem.length - 4
            if busca_operacao ordem, @j
                break
            else
                @pagina += 1
                find(:xpath, '//missao-policial-autorizar//div//li/a[(.="'+@pagina.to_s+'")]').click
            end
        end
    end
    def pequisar_rmp_rs(ordem, metodo)
        if metodo == 'Relatar RMP-RS'
            @j = 7
        else
            @j = 9
        end
        @pagina = 1
        while @pagina <= quantidade_paginas_busca_relatorio.length - 4
            if busca_operacao ordem, @j
                break
            else
                @pagina += 1
                find(:xpath, '//*[@id="resultadoPesquisa"]//a[(.="'+@pagina.to_s+'")]').click
            end
        end
    end
    
    def pesquisar_alocacao(ordem, metodo)
        if metodo == 'Aprovar Alocacao'
            @j = 6
        elsif metodo == 'Mobilizar Contigente'
            @j = 7
        else
            @j = 8
        end
        @pagina = 1
        while @pagina <= quantidade_paginas_busca_alocacao.length - 4
            if busca_operacao ordem, @j
                break
            else
                @pagina += 1
                find(:xpath, '//div/div/div/div[1]/div/div/div//div/div/nav/ul/li/a[(.="'+@pagina.to_s+'")]').click
            end
        end
    end
    def pesquisar_sat(ordem, metodo)
        @j = 6
        @pagina = 1
        while @pagina <= quantidade_paginas_busca_alocacao.length - 4
            if busca_operacao ordem, @j
                break
            else
                @pagina += 1
                find(:xpath, '//div/div/div/div[1]/div/div/div//div/div/nav/ul/li/a[(.="'+@pagina.to_s+'")]').click
            end
        end
    end

    def pesquisar_suv(ordem)
        @j = 9
        @pagina = 1
        while @pagina <= quantidade_paginas_busca_alocacao.length - 4
            if busca_operacao ordem, @j
                break
            else
                @pagina += 1
                find(:xpath, '//div/div/div/div[1]/div/div/div//div/div/nav/ul/li/a[(.="'+@pagina.to_s+'")]').click
            end
        end
    end

    #Método para encontrar uma ordem, relatorio ou alocação
    def busca_operacao(ordem, j)
        busca = false
        @iteracao = 0
        ordem = ordem.sub(".", "") 
        tamanho =  @estrutura.tabela.size
        dados =  @estrutura.tabela
        while @iteracao < tamanho
            argumento = dados[@iteracao].text.sub(".", "")
            if argumento == ordem
                dados[@iteracao + j].click
                busca = true
                break
            end
            @iteracao += 1
        end
        return busca
    end
    
    def busca_alocacao(alocacao)
        campo_numero_solicitacao_alocacao_pesquisa.set alocacao
        botao_pesquisar_alocacao.click
        visualizar_integrantes.click
    end
    

end

