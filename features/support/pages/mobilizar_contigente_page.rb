class MobilizarContigente < SitePrism::Page
    require 'securerandom'

    def initialize
        #setup para utilizar as informações de acordo com as classes carregadas
        @menu = Menu.new
        @pesquisar = Pesquisar.new
        @tools = Tools.new
    end

    #----------------------------------------------------------------------------------#
    #       Analista de Automação Responsável = Romilson Júnio Abreu Pereira           #
    #----------------------------------------------------------------------------------#

    #Elementos mapeados:
    
    element :botao_mobilizar_contingente, :xpath,'//a/span[text()=" Mobilizar Contingente"]'
    element :botao_tratar_atendimento, 'span.form-buttons-wrapper:nth-child(6) > a:nth-child(1)'
    element :botao_tratar_mobilizacao_input, :xpath, '//div/tratar-mobilizacao-consultar//cp-table-consulta-alocacao-tratar-atendimento/div/table/tbody//a'
    element :botao_enviar_solicitacao_alocacao, '.form-buttons-decoration > div:nth-child(1) > span:nth-child(1) > a:nth-child(1)'
    element :primeiro_link, 'tr.ng-scope:nth-child(2) > td:nth-child(1) > a:nth-child(1)'
    element :segundo_link, 'tr.ng-scope:nth-child(3) > td:nth-child(1) > a:nth-child(1)'

    #Tabela de Recrutamento em Tratamento
    element :botao_salvar_quantidade_dsitribuida, 'div.col-md-3:nth-child(2) > pf-form-buttons:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1) > a:nth-child(1)'
    
    #Campos de Unidades para Quantidade de Distribuição Estados
    element :quantidade_dsitribuida_ac, 'input[name="valorSuperitendencia7140"]'
    element :quantidade_dsitribuida_al, 'input[name="valorSuperitendencia4040"]'
    element :quantidade_dsitribuida_ap, 'input[name="valorSuperitendencia7380"]'
    element :quantidade_dsitribuida_am, 'input[name="valorSuperitendencia2450"]'
    element :quantidade_dsitribuida_ba, 'input[name="valorSuperitendencia2980"]'
    element :quantidade_dsitribuida_ce, 'input[name="valorSuperitendencia3260"]'
    element :quantidade_dsitribuida_df, 'input[name="valorSuperitendencia2720"]'
    element :quantidade_dsitribuida_es, 'input[name="valorSuperitendencia7830"]'
    element :quantidade_dsitribuida_go, 'input[name="valorSuperitendencia3510"]'
    element :quantidade_dsitribuida_ma, 'input[name="valorSuperitendencia6400"]'
    element :quantidade_dsitribuida_mt, 'input[name="valorSuperitendencia4930"]'
    element :quantidade_dsitribuida_ms, 'input[name="valorSuperitendencia4630"]'
    element :quantidade_dsitribuida_mg, 'input[name="valorSuperitendencia5490"]'
    element :quantidade_dsitribuida_pa, 'input[name="valorSuperitendencia5210"]'
    element :quantidade_dsitribuida_pb, 'input[name="valorSuperitendencia8500"]'
    element :quantidade_dsitribuida_pr, 'input[name="valorSuperitendencia5800"]'
    element :quantidade_dsitribuida_pe, 'input[name="valorSuperitendencia3780"]'
    element :quantidade_dsitribuida_pi, 'input[name="valorSuperitendencia7610"]'
    element :quantidade_dsitribuida_rj, 'input[name="valorSuperitendencia1310"]'
    element :quantidade_dsitribuida_rn, 'input[name="valorSuperitendencia8280"]'
    element :quantidade_dsitribuida_rs, 'input[name="valorSuperitendencia4260"]'
    element :quantidade_dsitribuida_ro, 'input[name="valorSuperitendencia6890"]'
    element :quantidade_dsitribuida_rr, 'input[name="valorSuperitendencia8730"]'
    element :quantidade_dsitribuida_sc, 'input[name="valorSuperitendencia6630"]'
    element :quantidade_dsitribuida_sp, 'input[name="valorSuperitendencia1810"]'
    element :quantidade_dsitribuida_se, 'input[name="valorSuperitendencia8060"]'
    element :quantidade_dsitribuida_to, 'input[name="valorSuperitendencia6170"]'
    
    #Campos de Unidades para Quantidade de Distribuição Unidades PF
    element :quantidade_dsitribuida_dgp  , 'input[name="valorDescentralizadas9360"]'
    element :quantidade_dsitribuida_dicor, 'input[name="valorDescentralizadas280"]'
    element :quantidade_dsitribuida_dip  , 'input[name="valorDescentralizadas590"]'
    element :quantidade_dsitribuida_direx, 'input[name="valorDescentralizadas90"]'
    element :quantidade_dsitribuida_ditec, 'input[name="valorDescentralizadas9370"]'
    element :quantidade_dsitribuida_dlog , 'input[name="valorDescentralizadas9350"]'
    element :quantidade_dsitribuida_coger, 'input[name="valorDescentralizadas350"]'
    element :quantidade_dsitribuida_dti  , 'input[name="valorDescentralizadas1210"]'
    element :quantidade_dsitribuida_pf   , 'input[name="valorDescentralizadas605"]'

    #Tabela Tratar Atendimento
    elements :tabela_tratar_atendimento, :xpath, '//div/cp-table-solicitacao-atendimento-tratar-mobilizacao//table/tbody/tr'
    element :voltar, :xpath, '//a/span[text()=" Voltar"]'
    
    def sal_pendente_recrutamento
        find('ul.ng-scope li.list-element a.link.ng-binding', :text => 'SAL Recrutamento Pendente').click
    end
    def relatar_alocacao_semob(alocacao)
        metodo = 'Mobilizar Contigente'
        @pesquisar.pesquisar_alocacao alocacao, metodo
    end

    def menu_tratar_mobilizacao
        sleep(4)
        menu_tratar_mobilizacao_input.click
    end

    def recuperar_dados_alocacao(arquivo_alocacao)
        @tools.leitura arquivo_alocacao
    end

    def mobilizar_contingente
        botao_mobilizar_contingente.click 
    end
    def tratar_atendimento
        botao_tratar_atendimento.click
    end
    def definir_quantidade_contigente tipo_solicitado

            primeiro_link.click
            definir_mapa primeiro_link
            botao_salvar_quantidade_dsitribuida.click
            
              #if tipo_solicitado == 'Serviço'
              segundo_link.click
              definir_mapa segundo_link
              #else
              #    segundo_link_missao.click
              #    definir_mapa segundo_link_missao
              #end
            botao_salvar_quantidade_dsitribuida.click

        botao_enviar_solicitacao_alocacao.click
    end
    def definir_mapa(link)
        case link.text
            when 'APF'
                quantidade_dsitribuida_rj.set 6
            when 'DPF'
                quantidade_dsitribuida_sp.set 6
            when 'ADM'
                quantidade_dsitribuida_al.set   1
            when 'ARQT'
                quantidade_dsitribuida_dlog.set 1
            else
        end
    end
    def botao_tratar_mobilizacao
        botao_tratar_mobilizacao_input.click
    end
    def visualizar_SATS_geradas(alocacao)
        @menu.menu_inicio
        @menu.menu_alocacao
        @menu.esconde_texto_menu
        @menu.menu_tratar_mobilizacao
        @pesquisar.busca_alocacao alocacao
        puts "\n"
        for trs in tabela_tratar_atendimento do
            sat_array = trs.text.split(" ")
            puts 'SAT: "' + sat_array[0] + '" UNIDADE: "' + sat_array[4] + '"'
            if sat_array[4] == "SR/PF/SP"
                @tools.gerar_dados_sat 'numero_sat_gerada.text', sat_array[0]
            end
        end
    end
    def analista_responsavel(alocacao)
        @id_responsavel = alocacao + "_input"
        @analista_responsavel_input = find(:id, @id_responsavel)
        @analista_responsavel_input.click.select 'RODRIGO SOUZA DE OLIVEIRA'
    end
end