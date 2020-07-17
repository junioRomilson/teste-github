class Desmembrar < SitePrism::Page

    def initialize
        #setup para utilizar as informações de acordo com as classes carregadas
        @menu = Menu.new
        @consultaOrdem = ConsultaOrdens.new
        @tools = Tools.new
    end

    #Elementos da Tela de Desmembramento de Ordem.
    element :input_duracao, '#duracao_input'
    element :input_justificativa_desmembramento, '#justificativaDesmembrar_input'
    element :botao_desmembrar, '#btn4'
    element :botao_integrante, :xpath, '//desmembrar-ordem//div/table[1]/tbody/tr[2]/td[7]/a'
    element :botao_chefe_nova, "input[name='chefeintegrantesServidoreVinculadosNova']"
    element :botao_chefe_antiga, "input[name='chefeintegrantesServidoreVinculadosAntiga']"
    element :titulo_modal_desmembrar, '#modal-title'
    element :botao_enviar_desmembramento, :xpath, '//a/span[text()=" Enviar"]'
    element :botao_confirmar_desmembramento, :xpath, '/html/body/div[1]/div/div/div/div[3]/pf-form-buttons/div/div/div/span[1]/a/span'
    element :numero_requisicao_desmembramento, :xpath, '/html/body/div[1]/application/pf-layout/div/div[1]/ng-transclude/div[2]/detalhamento-ordem/div/div/div[31]/div/div/table/tbody/tr[2]/td[1]'
                                               
    #preenchimento dos campos da tabela.
    def preencher_campos_desmembrar(campos_desmembrar)
        input_duracao.click.set (campos_desmembrar[:duracao_dias])
        input_justificativa_desmembramento.click.send_keys (campos_desmembrar[:justificativa_desmembramento])
    end 

    #aciona a opção desmembrar no detalhamento da ordem.
    def desmembrar
        botao_desmembrar.click
    end

    #Seleciona o integrante da lista.
    def selecionar_integrante
        botao_integrante.click
        botao_chefe_nova.click
        #botao_chefe_antiga.click
    end

    def enviar_desmembramento
        botao_enviar_desmembramento.click
    end
    
    #método que envia o formulário de desmembramento.
    def enviar_formulario_desmembramento(nome_arquivo_desmembramento)
        botao_confirmar_desmembramento.click
        dados_gravados_desmembramento = numero_requisicao_desmembramento.text
        @tools.gravar_dados_desmembramento nome_arquivo_desmembramento, dados_gravados_desmembramento
        puts "Ordem Desmembrada: N° #{dados_gravados_desmembramento}"
    end

end