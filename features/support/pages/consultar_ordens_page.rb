class ConsultaOrdens < SitePrism::Page 

    def initialize
        @menu = Menu.new
    end

    element :minhas_ordens_check, 'input[type="checkbox"]'
    element :numero_ordem_input, '#numeroOrdem_input'
    element :periodo_inicio_input, '#periodoInicio_input'
    element :periodo_final_input, '#periodoFinal_input'
    element :servidor_input, '#nome_input'
    element :dropdown_orgaos_parceiros, '#orgaoParceiro_input'
    element :dropdown_area_atuacao, '#areaAtuacao_input'
    element :dropdown_tipo_missao,  '#tipoMissao_input'
    element :dropdown_unidade, '#unidades_input'
    element :input_unidade, "input[type='search']"
    element :dropdown_uf_destino, '#uf_input'
    element :dropdown_cidade_destino, '#cidade_input'

    element :botao_pesquisar, 'body > div.wrapper.ng-scope > application > pf-layout > div > div.content-layer.m-b-1 > ng-transclude > div > consultar-ordem > div > div > div > article > div:nth-child(8) > div > pf-form-buttons > div > div > div > span:nth-child(1) > a'
    
    #registro pesquisado
    element :resultado_pesquisa, '#resultadoPesquisa > cp-table-consultar-ordem > div > table > tbody > tr'

    #Botões de oprações dos registros
    element :botao_integrantes, 'a[uib-tooltip="Integrantes"]'

    #modal integrantes
    element :modal_visualizar_servidor, '#modalVisualizarServidor'
    element :lista_servidores,'.table-striped > tbody:nth-child(2) > tr:nth-child(1)'
   

    def css_toast_message
        'div.toast-message'
    end

    def menu_consultar_ordens
        @menu.menu_omp_os
        @menu.consultar_omp_os
    end

    def check_minhas_ordens(confirm)
        minhas_ordens_check.click if confirm.eql? "sim" 
    end

    def choose_status_ordem(status)
        find('span', text: status).click
    end

    def choose_destino(destino)
        find('span', text: destino).click unless destino.empty? 
    end

    def selecionar_unidade(unidade)
        dropdown_unidade.click
        input_unidade.set(unidade).send_keys(:enter)
    end

    def preencher_all_filtros(dados)
        check_minhas_ordens(dados[:minhas_ordens])
        choose_status_ordem(dados[:status_ordem])
        numero_ordem_input.set dados[:numero_ordem].to_s
        periodo_inicio_input.click.set dados[:periodo_inicio]
        periodo_final_input.click.set dados[:periodo_final]
        dropdown_orgaos_parceiros.click.select(dados[:orgao_parceiro]).click
        dropdown_area_atuacao.click.select(dados[:area_de_atuacao]).click
        dropdown_tipo_missao.click.select(dados[:tipo_missao]).click
        selecionar_unidade(dados[:unidade])
        choose_destino(dados[:destino])
        dropdown_uf_destino.click.select(dados[:uf_destino]).click
        dropdown_cidade_destino.click.select(dados[:cidade_destino]).click
        servidor_input.set dados[:servidor]
    end 

    def preencher_dados_inexistentes(dados_inexistentes)
        numero_ordem_input.set dados_inexistentes[:numero_ordem].to_s
        servidor_input.set dados_inexistentes[:servidor].to_s
    end

    def preencher_datas_invalidas(datas)
        periodo_inicio_input.click.set datas[:periodo_inicio]
        periodo_final_input.click.set(datas[:periodo_final]).send_keys(:enter)
        find('label', text: 'Período Final:').click
        periodo_final_input.click
        find('label', text: 'Período Final:').click
    end

    def selecionar_ordem(nr_ordem)
        numero_ordem_input.click.set nr_ordem
        selecionar_unidade("Todas")
        botao_pesquisar.click
    end

    def visualizar_integrantes
        wait_until_modal_visualizar_servidor_visible
        wait_until_lista_servidores_visible
    end

end