class Sat < SitePrism::Page
    def initialize
        #setup para utilizar as informações de acordo com as classes carregadas
        @menu = Menu.new
        @pesquisar = Pesquisar.new
        @tools = Tools.new
        @alocacao = Alocacao.new
    end
    
    #----------------------------------------------------------------------------------#
    #       Analista de Automação Responsável = Romilson Junio                         #
    #----------------------------------------------------------------------------------#

    element :unidade_responsavel_atendimento_input, :xpath, '//*[@id="atendimento.nomeComponente_input"]'
    element :botao_atender_solicitacao, :xpath, '//a/span[text()=" Atender Solicitação"]'
    element :botao_recusar_solicitacao, :xpath, '//a/span[text()=" Recusar Solicitação"]'
    elements :dados_solicitacao_tabela, :xpath, '//cp-text-recrutar-dados-contigente-solicitado//table/tbody/tr/td'
    element :incluir_servidor, :xpath, '//detalhar-atendimento-gerar-ordem//table/tbody/tr[1]/td[5]/a'

    element :botao_gerar_ordem_responsavel_atendimento, :xpath, '//a/span[text()=" Gerar Ordem"]'
    element :cargo_input, '#cargo_input'
    element :unidade_input, '#unidade_input'
    element :pesquisar, :xpath, '//a/span[text()=" Pesquisar"]'
    element :continuar, '#btn1'
    elements :chefe_ordem, 'input[name="chefe"]'
    element :campo_numero_solicitacao_atendimento_pesquisa ,'#numeroSolicitacao_input'
    element :visualizar_integrantes, 'html body.ng-scope.block-ui.block-ui-anim-fade div.wrapper.ng-scope application.ng-scope.ng-isolate-scope pf-layout.ng-isolate-scope div div.content-layer.m-b-1 ng-transclude div.content-wrapper.ng-scope.ng-fadeInRight consultar-atendimento.ng-scope.ng-isolate-scope div.ng-scope div.container-fluid.m-l-1.ng-scope div.form-vertical.ng-valid-mask.ng-valid-minlength.ng-valid-maxlength.ng-valid.ng-valid-required.ng-dirty.ng-valid-parse article div.row div#resultadoPesquisa.col-sm-12 cp-table-atendimento-consultar.ng-isolate-scope div.ng-scope table.table.table-bordered tbody.ng-scope tr td.text-center a.btn.btn-outline-primary.btn-xs'
    element :botao_pesquisar, 'html body.ng-scope.block-ui.block-ui-anim-fade div.wrapper.ng-scope application.ng-scope.ng-isolate-scope pf-layout.ng-isolate-scope div div.content-layer.m-b-1 ng-transclude div.content-wrapper.ng-scope.ng-fadeInRight consultar-atendimento.ng-scope.ng-isolate-scope div.ng-scope div.container-fluid.m-l-1.ng-scope div.form-vertical.ng-valid-mask.ng-valid-minlength.ng-valid-maxlength.ng-valid.ng-valid-required.ng-dirty.ng-valid-parse article div.row div.col-sm-2.filtroPesquisa pf-form-buttons.ng-isolate-scope div.row div.form-buttons-group.form-buttons-decoration div.col-md-12 span.form-buttons-wrapper.ng-scope a.ng-scope.btn.btn-secondary'

    def sat_pendente_aprovacao_as
        find('ul.ng-scope li.list-element a.link.ng-binding', :text => 'SAT Pendente de Aprovação pela AS').click
    end
    def sat_vencida_as
        find('ul.ng-scope li.list-element a.link.ng-binding', :text => 'SAT Vencida AS').click
    end
    def sat_pendente_responsavel_atendimento
        find('ul.ng-scope li.list-element a.link.ng-binding', :text => 'SAT Pendente Responsável pelo Atendimento').click
    end

    def recuperar_dados_sat(arquivo_sat)
        @tools.leitura arquivo_sat
    end
    def relatar_sat_as(sat)
        metodo = 'Atender Sat AS'
        @pesquisar.pesquisar_sat sat, metodo
    end
    def relatar_sat_responsavel_atendimento(sat)
        @menu.menu_alocacao
        @menu.menu_solicitacao_atendimento
        @menu.menu_consultar_atendimento
        busca_sat sat
    end
    def unidade_responsavel_atendimento(unidade)
        unidade_responsavel_atendimento_input.click.select unidade
    end
    def atender_solicitacao
        botao_atender_solicitacao.click
    end
    def recusar_solicitacao
        botao_recusar_solicitacao.click
    end
    def dados_ordem
        @dados_solicitacao = dados_solicitacao_tabela
        quantidade_servidores = @dados_solicitacao[1].text
        cargo_input.click
        cargo_input.select cargo_incluir @dados_solicitacao[0].text
        unidade_input.click.select 'DELEGACIA DE POLICIA FEDERAL EM BAURU - DPF/BRU/SP'
        pesquisar.click
        i = 0
        while i < quantidade_servidores.to_i
            incluir_servidor.click
            if element_visible? '#btn1'
                continuar.click
            end
            i += 1
            sleep(3)
        end
        chefe_ordem[0].click
        botao_gerar_ordem_responsavel_atendimento.click
    end
    def gerar_ordem
        botao_gerar_ordem_responsavel_atendimento.click
    end
    def cargo_incluir(cargo)
        case cargo
            when 'APF'    then return 'AGENTE DE POLICIA FEDERAL'
            when 'DPF'    then return 'DELEGADO DE POLICIA FEDERAL'
            when 'AGEPEN' then return 'AGENTE FEDERAL DE EXECUÇÃO PENAL'
            when 'EPF'    then return 'ESCRIVAO DE POLICIA FEDERAL'
            when 'PPF'    then return 'PAPILOSCOPISTA POLICIAL FEDERAL'
            when 'PCF'    then return 'PERITO CRIMINAL FEDERAL'
        end
    end
    def element_visible?(element_id)
        exists = page.has_css?(element_id, wait: 3)
        return (exists)
    end
    def busca_sat(sat)
        campo_numero_solicitacao_atendimento_pesquisa.set sat
        botao_pesquisar.click
        visualizar_integrantes.click
    end
end
