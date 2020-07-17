class Menu < SitePrism::Page



    #Elementos mapeados:
    element :menu_omp_os_input, '#menu-omp'
    element :menu_omp_incluir_input, '#menu-omp-incluir > span'
    element :menu_omp_os_autorizar_ad_input, '#menu-omp-autorizar'
    element :autorizar_autoridade_determinante_input, '#menu-omp-autorizar-ad'
    element :autorizar_autoridade_superior_input, '#menu-omp-autorizar-as'
    element :autorizar_diretor_geral_input, '#menu-omp-autorizar-dg'
    element :incluir_alocacao_input, '#menu-alocacao-incluir'
    element :menu_alocacao_input, '#menu-alocacao'
    element :menu_consultar_alocacao_input, '#menu-consultar-alocacao'
    element :menu_rmp_rs, '#menu-rmp-rs'
    element :botao_menu_relatar_rmp_rs, '#menu-relatar-rmp-rs'
    element :botao_menu_aprovar_rmp_rs, '#menu-aprovar-rmp-rs'
    element :aprovar_solicitacao_alocacao, '#menu-aprovar-solicitacao'
    element :aprovar_solicitacao_alocacao_ad, '#menu-aprovar-solicitacao-ad'
    element :menu_inicio_input, '#menu-inicio'
    element :menu_tratar_mobilizacao_input, '#menu-tratar-mobilizacao'
    element :esconde_texto_menu_input, :xpath, '//div/pf-navbar/header/nav/div[2]/ul[1]/li/a[1]'
    element :menu_solicitacao_atendimento_input, '#menu-solicitacao-atendimento'
    element :menu_consultar_sat_input, '#menu-consultar-atendimento'
    element :menu_solicitar_viagem_urgente, '#menu-solicitar-avu'
    element :menu_incluir_viagem_urgente, '#menu-avu-incluir'
    element :menu_consultar_viagem_urgente, '#menu-avu-consultar'

    

    element :secao_navegacao_menu, '.aside'
    def incluir_viagem_urgente
        menu_omp_os
        menu_solicitar_viagem_urgente.click
        menu_incluir_viagem_urgente.click
    end
    def consultar_viagem_urgente
        menu_omp_os
        menu_solicitar_viagem_urgente.click
        menu_incluir_viagem_urgente.click
    end
    def aprovar_viagem_urgente
        menu_omp_os
        menu_solicitar_viagem_urgente.click
    end
    #Menu sistema:
    def menu_omp_os
        wait_until_menu_omp_os_input_visible
        menu_omp_os_input.click
    end

    def incluir_opm_os
        menu_omp_incluir_input.click
    end
    
    def consultar_omp_os
       find(:xpath, '/html/body/div[1]/application/pf-layout/div/pf-sidebar/div/div/div[1]/nav/pf-menu/ul/ng-repeat[4]/pf-menu-item/li/pf-menu/ul/ng-repeat[2]/pf-menu-item/li/a/span').click
    end

    def autorizar_omp_os
        menu_omp_os_autorizar_ad_input.click
    end

    def autorizar_autor_deter
        autorizar_autoridade_determinante_input.click
    end

    def autorizar_autoridade_superior
        autorizar_autoridade_superior_input.click
    end

    def autorizar_diretor_geral
        autorizar_diretor_geral_input.click
    end

    def menu_alocacao
        menu_alocacao_input.click
    end
    def menu_consultar_alocacao
        menu_consultar_alocacao_input.click
    end
    def menu_solicitacao_atendimento
        menu_solicitacao_atendimento_input.click
    end
    def menu_consultar_atendimento
        menu_consultar_sat_input.click
    end
    def menu_inicio
        menu_inicio_input.click
    end

    def menu_tratar_mobilizacao
        menu_tratar_mobilizacao_input.click
    end
    

    def incluir_alocacao
        menu_alocacao_input.click
        incluir_alocacao_input.click
    end

    def menu_relatar_rpm_rs
        menu_rmp_rs.click
        botao_menu_relatar_rmp_rs.click
    end

    def menu_aprovar_rpm_rs
        menu_rmp_rs.click
        botao_menu_aprovar_rmp_rs.click
    end

    def menu_aprovar_alocacao_ad
        menu_alocacao_input.click
        aprovar_solicitacao_alocacao.click
        aprovar_solicitacao_alocacao_ad.click
    end
    def esconde_texto_menu
        esconde_texto_menu_input.click
    end
end