class AutorizarAlocacao < SitePrism::Page

    def initialize
        #setup para utilizar as informações de acordo com as classes carregadas
        @menu = Menu.new
        @pesquisar = Pesquisar.new
        @tools = Tools.new
        @servidor_outra_unidade = false
    end

    element :aprovar, 'alocacao-detalhar-solicitacao > div > div.container-fluid.m-l-1.ng-scope > div > div > div > pf-form-buttons > div > div > div > span:nth-child(2) > a'
    element :aprovar_diretor, '.btn-outline-success'
    element :aprovar_dg, 'span.form-buttons-wrapper:nth-child(2) > a:nth-child(1)'
    element :pendente_aprovacao, 'div.content-layer.m-b-1 > ng-transclude > div > inicio > div.container-status > div:nth-child(1) > div:nth-child(2) > div.linklist > ul > li:nth-child(2) > a'
    element :pendente_aprovacao_as, 'body > div.wrapper.ng-scope > application > pf-layout > div > div.content-layer.m-b-1 > ng-transclude > div > inicio > div.container-status > div:nth-child(1) > div:nth-child(2) > div.linklist > ul > li:nth-child(2) > a'
    element :pendente_aprovacao_diretor, '.container-status > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > ul:nth-child(1)'
    element :pendente_aprovacao_diretor_geral, '.link_ng-binding, :text => SAL Pendente de Aprovação pelo DG'
    element :msg_ordem_confirmar, '#btn1'
    element :msg_ordem_cancelar, '#btn2'
    element :modal_confirmar, '#modalConfirmarServidorAlocadaSemobAd'
    element :serv_outra_unidade_input, '#justificativaServidorOutraUnidade_input'
    element :aprovar_as, 'aprovar-detalhar-alocacao-a-s > div > div.container-fluid.m-l-1.ng-scope > div > div > div > pf-form-buttons > div > div > div > span:nth-child(4) > a > span'
    element :justificativa_aprovacao_input, '#justificativaAprovacao_input'
    element :aprovar_justificativa, '#btn1'
    element :justificativa_aprovacao_dg_input, '#justificativaAprovarDG_input'



    def recuperar_dados_alocacao(arquivo_alocacao)
        @tools.leitura arquivo_alocacao
    end

    def relatar_alocacao(alocacao)
        metodo = 'Aprovar Alocacao'
        @pesquisar.pesquisar_alocacao alocacao, metodo
    end

    def relatar_alocacao_as(alocacao)
        metodo = 'Aprovar Alocacao AS'
        @pesquisar.pesquisar_alocacao alocacao, metodo
    end

    def acoes_alocacao(acoes_solicitadas)
        
        if acoes_solicitadas == 'Aprovação'
            aprovar.click
        elsif acoes_solicitadas == 'Aprovação pelo Diretor'
            aprovar_diretor.click
        end
        
    end

    def sal_pendente_aprovacao
        find('ul.ng-scope li.list-element a.link.ng-binding', :text => 'SAL Pendente de Aprovação').click
    end

    def sal_pendente_aprovacao_as
        find('ul.ng-scope li.list-element a.link.ng-binding', :text => 'SAL Pendente de Aprovação pela AS').click  
    end

    def sal_pendente_aprovacao_diretor
        find('ul.ng-scope li.list-element a.link.ng-binding', :text => 'SAL Pendente de Aprovação pelo Diretor').click
    end

    def sal_pendente_aprovacao_diretor_geral
        find('ul.ng-scope li.list-element a.link.ng-binding', :text => 'SAL Pendente de Aprovação pelo DG').click
    end
    def element_visible?(element_id)
        exists = page.has_css?(element_id)
        return (exists)
    end 
    def msg_ordem_unidade(msg_mob_outra_unidade)
        if element_visible?("#modalConfirmarServidorAlocadaSemobAd")
            if msg_mob_outra_unidade == 'Confirmar'
                msg_ordem_confirmar.click
                @servidor_outra_unidade = true
            else 
                msg_ordem_cancelar.click
            end
        end
    end

    def serv_outra_unidade(justificativa_outras_unidades)
        #if element_visible?("#justificativaServidorOutraUnidade_input")
        if @servidor_outra_unidade == true
            serv_outra_unidade_input.click.set justificativa_outras_unidades
        end
    end

    def acoes_alocacao_as(acoes_solicitadas_as, justificativa_aprovar)
       
        if acoes_solicitadas_as == 'Aprovação'
            aprovar_as.click
            justificativa_aprovacao_input.set justificativa_aprovar
            aprovar_justificativa.click
        elsif acoes_solicitadas_as == 'Aprovação pelo Diretor Geral'
            aprovar_dg.click
            justificativa_aprovacao_dg_input.set justificativa_aprovar
            aprovar_justificativa.click
        end
    
    end
   
end