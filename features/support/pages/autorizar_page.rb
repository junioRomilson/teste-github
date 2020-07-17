class Autorizar < SitePrism::Page

    def initialize
        #setup para utilizar as informações de acordo com as classes carregadas
        @menu = Menu.new
        @pesquisar = Pesquisar.new
        @tools = Tools.new
    end

    element :botao_pendencias_assessor_as, '.container-status > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > ul:nth-child(1) > li:nth-child(2) > a:nth-child(1)'
    element :botao_aprovar_assessor, :xpath, '//a/span[text()=" Autorizar por ordem da AS"]'
    element :botao_nao_aprovar_assessor, :xpath, '//a/span[text()=" Não Autorizar por ordem da AS"'
    element :botao_pendencias_assessor_dg, '.container-status > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > ul:nth-child(2) > li:nth-child(2) > a:nth-child(1)'

    #navegando no menu
    def navegando_menu(operacao)
      
        @menu.menu_omp_os

        if operacao == 'Consultar OMP/OS'
            @menu.consultar_omp_os
        elsif operacao == 'Autorizar OMP/OS = Autoridade Determinante'
            @menu.autorizar_omp_os 
            @menu.autorizar_autor_deter
        elsif operacao == 'Autorizar OMP/OS = Autoridade Superior'
            @menu.autorizar_omp_os 
            @menu.autorizar_autoridade_superior
        elsif operacao == 'Autorizar OMP/OS = Diretor Geral'
            @menu.autorizar_omp_os 
            @menu.autorizar_diretor_geral
        end

    end
    
    #Leitura do arquivo .txt referente a OMP?OS -> Gerada
    def recuperar_dados(arquivo)
        @tools.leitura arquivo
    end

    #método que realiza a consulta de uma ordem OMP/OS
    def consultar_ordem_omp_os(info_dados)
        navegando_menu 'Consultar OMP/OS'
        @pesquisar.consultar_ordem info_dados[0]
        puts info_dados[0]
    end

    #método para a realização da autorização pela Autoridade Determinante
    def autorizar_autoridade_determinante(info_dados)
        navegando_menu 'Autorizar OMP/OS = Autoridade Determinante' 
        metodo = 'Autoridade Determinante'
        @pesquisar.pequisar_omp_os info_dados[0], metodo
        
        #wait_for_ajax
        @pesquisar.justificativa info_dados[1]

       # binding.pry
        if has_css?(@pesquisar.css_justificativa_necessidade_transporte_input)
            @pesquisar.justificativa_necessidade_transporte info_dados[3]
        end
        @pesquisar.autorizar
    end

    #método para a realização da autorização pela Autoridade Superior
    def autorizar_autoridade_superior(info_dados)
        metodo = 'Autoridade Superior'
        navegando_menu 'Autorizar OMP/OS = Autoridade Superior'
        @pesquisar.autorizacao_analisada_assessor info_dados[2]
        @pesquisar.pequisar_omp_os info_dados[0], metodo
    end

    #método para a realização da autorização pelo Diretor Geral
    def autorizar_diretor_geral(info_dados)
        metodo = 'Diretor Geral'
        navegando_menu 'Autorizar OMP/OS = Diretor Geral'
        @pesquisar.pequisar_omp_os info_dados[0], metodo
    end

    def autorizar_ordem_acoes(autorizar_acoes)

        if autorizar_acoes == 'Autorizar'
            @pesquisar.autorizar
        end
    
    end


    def autorizar_assessor_as(autorizar_assessor)

        if autorizar_assessor == 'Autorizar por Ordem da AS'
            botao_aprovar_assessor.click
        elsif autorizar_assessor == 'Não Autorizar por Ordem da AS'
            botao_nao_aprovar_assessor.click
        end

    end

    def acessar_pendencias_assessor_as
        botao_pendencias_assessor_as.click
    end

    def acessar_pendencias_assessor_dg
        botao_pendencias_assessor_dg.click
    end

end