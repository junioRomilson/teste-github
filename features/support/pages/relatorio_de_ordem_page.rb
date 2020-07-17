class Relatar < SitePrism::Page
    
    def initialize
        #setup para utilizar as informações de acordo com as classes carregadas
        @menu = Menu.new
        @pesquisar = Pesquisar.new
        @tools = Tools.new
    end

    element :relato_input, '#relato_input'
    element :resultado_obtido_input, '#resultadosObtidos_input'
    element :providencias_necessarias_input, '#providenciasNecessarias_input'
    element :botao_entregar_relatorio, :xpath, '//relatar-incluir-missao-policial/div/div[2]/div/div/pf-form-buttons/div/div/div/span[1]/a'
    
    #Leitura do arquivo .txt referente a Ordem já Autorizada. 
    def recuperar_dados_rmp(arquivo_rmp)
        @tools.leitura arquivo_rmp
    end

    def relatar_rmp_rs(relatorio)
        metodo = 'Relatar RMP-RS'
        @pesquisar.pequisar_rmp_rs relatorio, metodo
    end

    def preencher_campos_relatorio(campos_relatorio)
        relato_input.set (campos_relatorio[:relato])
        resultado_obtido_input.set (campos_relatorio[:resultado_obtido])
        providencias_necessarias_input.set (campos_relatorio[:providencias_necessarias])
    end 

    def entregar_relatorio
        botao_entregar_relatorio.click
        puts 'Relatório enviado para aprovação da Autoridade Determinante.'
    end


    #Aprovar Relatório.

    element :botao_aprovar_rmp, '#btn1'
    
    def aprovar_rmp
        botao_aprovar_rmp.click
        sleep(3)
    end

    #Recusar Relatório.

    element :botao_recusar_rmp, '#btn2'
    element :justificativa_recusa_input, '#justificativaRecusaAD_input'

    def recusar_rmp
        botao_recusar_rmp.click
    end

    def jutificativa_recursa(justificar_recusa)
        justificativa_recusa_input.click.set justificar_recusa
    end
end