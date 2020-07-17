class Prorrogar < SitePrism::Page
    
    def initialize
        #setup para utilizar as informações de acordo com as classes carregadas
        @menu = Menu.new
        @consultaOrdem = ConsultaOrdens.new
        @tools = Tools.new
    end
    
    #Elementos até a tela prorrogar
    element :input_ordem, '#numeroOrdem_input'
    element :input_pesquisar, '.ng-scope.btn.btn-primary'
    element :input_visualizar, 'a[uib-tooltip="Visualizar"]'
    element :input_prorrogar, '#btn6'
    
    #Elementos da tela prorrogar ordem
    element :input_data_termino, '#dataFim_input'
    element :input_definir_integrante, '.ng-scope.btn.btn-outline-success'
    element :input_campo_missao, '#descMissao_input'
    element :input_duracao, '#duracao_input'
    element :input_justiicativa_prrogacao, '#justificativaProrrogar_input'
    element :botao_incluir, '.btn.btn-success.btn-xs'
    element :botao_enviar, '.ng-scope.btn.btn-primary'
    element :titulo_modal, '#modal-title'
    element :botao_confirmar_prorrogacao, '#btn3'
    element :botao_chefe_radio, 'input[name="chefeintegrantesServidoreVinculadosProrrogadaNova"][type="radio"]'
    element :unidade_input, '#unidades_input'
    
    #Elemento Mensagem
    element :mensagem_sucesso, '.toast-message'
    element :numero_requisicao, 'cp-static-text > div > div > span.col-sm-12 > label'

    #Método que escreve o número da ordem na tela.
    def ordem_prorrogar(nr_ordem)
        input_ordem.set nr_ordem
        input_pesquisar.click
    end

    def visualizar_ordem
        input_visualizar.click
    end

    def prorrogar
        input_prorrogar.click
    end

    #Método que preenche todos os campos do prorrogar.
    def preencher_os_campos(campos_prorrogar)
        input_duracao.click.set campos_prorrogar[:duracao_dias] 
    end 

    def incluir_integrante
        botao_incluir.click
        botao_chefe_radio.click
    end

    def definir_integrante
        input_definir_integrante.click
    end

    def enviar
        botao_enviar.click
    end
    #Foi comentado pois o metodo enviar formulário substitui.
    # def confirmar
    #     botao_confirmar_prorrogacao.click
    # end
    
    def pesquisar
        unidade_input.click
        #puts 'Selecionar Unidade'
        find('#ui-select-choices-row-0-0 > span:nth-child(1) > div:nth-child(1)').click
        input_pesquisar.click
    end

    #metodo de leitura do arquivo
    def recuperar_dados(arquivo)
        input_ordem.set @tools.leitura arquivo
    end

    def jutificativa_de_prorrogacao(justificativa_prorrogar)
        input_justiicativa_prrogacao.set justificativa_prorrogar
    end
    
    def enviar_formulario(nome_arquivo)
        botao_confirmar_prorrogacao.click
        dados_gravados = numero_requisicao.text
        @tools.gravar_dados nome_arquivo, dados_gravados
        puts "Ordem Prorrogada: #{dados_gravados}"
     end
end
