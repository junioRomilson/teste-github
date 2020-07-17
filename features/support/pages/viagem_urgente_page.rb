class ViagemUrgente < SitePrism::Page

    def initialize
        #setup para utilizar as informações de acordo com as classes carregadas
        @menu = Menu.new
        #@pesquisar = Pesquisar.new
        @tools = Tools.new
        @formulario = Formulario.new
        @data_analise = Data_verificacao.new
        @pesquisar = Pesquisar.new
        @ordem = nil
    end


    #----------------------------------------------------------------------------------#
    #       Analista de Automação Responsável = Romilson Júnio Abreu Pereira           #
    #----------------------------------------------------------------------------------#
    
    #Elementos, referentes a tela de solicitar viagem urgente:
    #incluir
    element :numero_ordem_incluir_input, '#numeroOrdem_input'
    element :justificativa_intempestividade_input, '#justificativaIntempestividade_input'    
    element :justificativa_relevancia_input, '#justificativaRelevencia_input'
    element :possivel_adiar_missao_sim_input, 'input[id="possivelAdiar_input"][value="S"]'
    element :possivel_adiar_missao_nao_input, 'input[id="possivelAdiar_input"][value="N"]'
    element :autoridade_designada_input, '#autoCompleteAutoridade_input'
    element :numero_solicitacao_viagem_urgente, 'td.ng-binding:nth-child(1)'

    #menu de autorização
    element :menu_autorizar, :xpath, '//li[@class="nav-item  n-3"]/a[@id="menu-avu-autorizar"]/span'
    element :autorizar_ad, :xpath, '//li[@class="nav-item  n-4"]/a[@id="menu-avu-autorizar"]/span'
    element :autorizar_as, '#menu-avu-autorizar-as'

    
    #consultar
    element :numero_viagem_urgente_input, '#nrSolicitacao_input'
    element :numero_ordem_input, '#nrOrdem_input'
    element :unidade_input, :xpath, '//*[@id="unidades_input"]/div/span/span[2]'
    

    #Botões da Tela
    element :pesquisar, :xpath, '//a/span[text()=" Pesquisar"]'
    element :limpar, :xpath, '//a/span[text()=" Limpar"]'
    element :salvar, :xpath, '//a/span[text()=" Salvar"]'
    element :solicitar_autorizacao, :xpath, '//a/span[text()=" Solicitar Autorização"]'
    element :voltar, :xpath, '//a/span[text()=" Voltar"]'

    #Autorizar
    element :justificativa_recusa_input, '#justificativaRecusa_input'
    element :autorizar, :xpath, '//a/span[text()=" Autorizar"]'
    element :apresentar_historico, :xpath, '//a/span[text()=" Apresentar Hitórico"]'
    element :alterar, :xpath, '//a/span[text()=" Alterar"]'
    element :recusar, :xpath, '//a/span[text()=" Recusar"]'

    #Métodos da tela solicitar viagem urgente
    def pesquisar_ordem(ordem)
        @ordem = ordem
        numero_ordem_incluir_input.set ordem
        pesquisa_ordem
    end

    def consultar_solicitacao(ordem)
        numero_ordem_input.set ordem
        pesquisa_ordem
        return numero_solicitacao_viagem_urgente.text
    end

    def pesquisa_ordem
        pesquisar.click
    end

    def limpar_campo
        limpar.click
    end
    
    def justificativa_intempestividade(justificativa)
        justificativa_intempestividade_input.click.set justificativa
    end
    
    def justificativa_relevancia(justificativa)
        justificativa_relevancia_input.click.set justificativa
    end

    def possivel_adiar_missao(resp)
        if resp.upcase == "SIM"
            possivel_adiar_missao_sim_input.click
        else
            possivel_adiar_missao_nao_input.click
        end
    end

    def autoridade_designada(autoridade)
        autoridade_designada_input.click.set autoridade
        sleep(3)
        find(:xpath, '//a[@title="'+autoridade.upcase+'"]').click
    end

    def salvar_solicitacao
        salvar.click
    end
    
    def enviar_solicitacao
        solicitar_autorizacao.click
    end

    def voltar_pagina
        voltar.click
    end

    def autorizar_viagem_urgente_ad
        menu_autorizar.click
        autorizar_ad.click
    end

    def autorizar_viagem_urgente_as
        menu_autorizar.click
        autorizar_as.click
    end

    def acao_autoridade(acao)
        if acao.upcase == "RECUSA"
            justificativa_recusa_input.click.set "Justificativa da Recusa - Automação"
            recusar.click
        else
            autorizar.click
        end
    end

    def visualizar_suv(suv)
        @pesquisar.pesquisar_suv suv
    end

    def gravar_arquivo(nome_arquivo)
        dados_gravados = consultar_solicitacao @ordem
        @tools.gerar_dados_viagem_urgente nome_arquivo, dados_gravados
        puts "\nSolicitação de viagem urgente Gerada: Nº #{dados_gravados}"
    end

end