class Formulario < SitePrism::Page

=begin

    * Classe contendo o mapeamento do formulário do sistema MOB2 - DPF
    * Script desenvolvido por Alexandre Pereira Santos - Célula 386

    * Contact:
        1 - email: alex.endrios@hotmail.com
        2 - celular: 61-992861490

    By Jan 2018

=end


    #Elementos: Inputs Mapeados - Dados da Missão
    element :ordem_input_missao_policial, 'input[type="radio"][value="missaoPolicial"]'
    element :ordem_input_servico, 'input[type="radio"][value="servico"]'
    element :servico_comum_input, 'input[type="radio"][value="comum"]'
    element :servico_sigilosa_input, 'input[type="radio"][value="sigilosa"]'
    element :tipo_destino_input, '#tipoDeDestino_input'
    element :destino_uf_input, '#destinoUF_input'
    element :pais_input, '#pais_input'
    element :num_inquerito_policial_input, '#numInqueritoPolicial_input'
    element :area_atuacao_input, '#areaAtuacao_input'
    element :unidade_inquerito_input, '#unidadeInquerito_input > div:nth-child(1)'
    element :tipo_missao_input, '#tipoMissao_input'
    element :data_inicio_input, '#dataInicio_input'
    element :data_fim_input, '#dataFim_input'
    element :cidade_uf_input, '#cidadeUF_input'
    element :cidade_input, '#cidadePais_input'
    element :local_apresentacao_input, '#localApresentacao_input'
    element :descricao_missao_input, '#descMissao_input'
    element :exibir_orgaos_parceiros, 'span[ng-show="!$ctrl.exibirOrgaos"]'
    element :select_orgaos_parceiros, 'dual-list-box[name="orgaosParceiros"] select[ng-model="$ctrl.itemRight"]'
    element :dados_conhecidos_input, '#dadosConhecidos_input'
    element :recomendacoes_input, '#recomendacoes_input'
    element :undefined_input, '#autoCompleteSiorg_input'
    element :centro_custo_input, '#centroCusto_input'
    element :autoridade_determinante_input, '#autoCompleteAutoridade_input'
    element :adc_autoridade_determinante_input, '.uib-typeahead-match.ng-scope.active'
    

    #Elementos Inputs somente leitura - usado para determinar um tipo de ação - Dados da Missão
    element :duracao_input, '#duracao_input'
    element :duracao_leitura, '.form-vertical > div:nth-child(6) > div:nth-child(1) > cp-static-text:nth-child(1) > div:nth-child(2) > div:nth-child(1) > span:nth-child(2)'
    element :qtd_diarias_input, '#qtdDiarias_input'

    #Elementos mapeados Diária e Transporte
    element :custo_diaria_nao_ha_input, 'input[name="custoPassagensTransporenaoHavera"]'
    element :custo_diaria_pago_sem_ressacimento_input,'input[name="custoDiariasTransporteseraPagoPor"]'
    element :custo_diaria_pago_com_ressacimento_input, 'input[name="custoDiariasTransporteseraPagoPorRessarcimento"]'
    element :custo_diaria_pago_outo_orgao_input, 'input[type="radio"][name="custoDiariasTransporte"]'
    element :pagamento_transporte_input, '#pagasmentoTransporte_input'
    element :unidade_pagadora_transporte_input, '#unidadePagadoraTransporte_input'
    element :unidade_ressacimento_transporte_input, '#unidadeRessacimentoTransporte_input'
    element :custo_diarias_transportecd_desc_orgao_input, '#custoDiariasTransportecdDescOrgao_input'
    element :tipo_transporte_input, '#tipoTransporte_input'
    element :subtipo_transporte_input, '#subtipoTransporte_input'
    element :observacao_transporte_diaria_input, '#observacaoTransporteDiaria_input'
    element :sem_custo_passagem_input, 'input[name="custoPassagensTransporenaoHavera"]'
    element :custo_passagem_pago, 'input[name="custoPassagensTransporeseraPagoPor"]'
    element :pagasmento_passagens_input, '#pagasmentoPassagens_input'
    element :custo_passagens_ressacimento_input, 'input[name="custoPassagensTransporeseraPagoPorRessarcimento"]'
    element :unidade_pagadora_passagens_input, '#unidadePagadoraPassagens_input'
    element :unidade_ressacimento_passagens_input, '#unidadeRessacimentoPassagens_input'
    element :custo_passagens_transpore_pago_orgao_input, '#custoPassagensTransporecdDescOrgao_input'
    element :select_custo_passagens_transpore_pago_orgao_input, 'input[name="custoPassagensTranspore"]'

    #mapeamento equipamento
    element :armamento_input, '#armamento_input'
    element :telecomunicacao_input, '#telecomunicacao_input'
    element :vestuario_input, '#vestuario_input'
    element :outro_equipamentos_input, '#outroEquipamentos_input'

    #mapeando Anexos
    element :descricao_anexo_input, '#descricaoAnexo_input'
    element :data_inclusao_input, '#dataInclusao_input'

    #mapeamento button
    element :definir_integrantes_button, '#definirIntegrantes'

    #mapeamento Localizar Integrantes
    element :servidores_input, '#servidores_input'
    elements :tabela, 'tr > td'

    #mapeamento Classificação da Missão
    element :unidade_central_input, 'input[id="interesse_input"][value="1"]'
    element :local_input, 'input[id="interesse_input"][value="2"]'
    element :unidade_interessada_input, '#unidadeInteressada_input'
    element :valor_diaria_classificacao_input, '#valorDiariaClassificacao_input'
    element :valor_diaria_input, 'span.col-md-12:nth-child(2)'
    element :data_apresentacao_input, '#dataApresentacao_input'
    element :hora_apresentacao_input, '#horaApresentacao_input'
    
    #mapeamento Radio Butons de Classificação da Missão 
    element :deslocamento_sigilo_sim_input, 'input[name="sigiloDelocamento_input"][value="S"]'
    element :deslocamento_sigilo_nao_input, 'input[name="sigiloDelocamento_input"][value="N"]'
    element :justificativa_deslocamento_input, '#justificativaNecessidadeDeslocamentoServidorOutraUnidade_input'
    element :curso_sim_input, 'input[name="cursosClassificacao_input"][value="S"]'
    element :curso_nao_input, 'input[name="cursosClassificacao_input"][value="N"]'
    element :mais_cinco_integrantes_evento_sim_input, 'input[id="maisCincoServidores_input"][value="S"]'
    element :mais_cinco_integrantes_evento_nao_input, 'input[id="maisCincoServidores_input"][value="N"]'
    element :possivel_adiar_missao_sim_input, 'input[id="adiarMissaoServico_input"][value="S"]'
    element :possivel_adiar_missao_nao_input, 'input[id="adiarMissaoServico_input"][value="N"]'
    
    
    #Justificativas
    element :justificativa_inicio_termino_feriado_fim_semana_input, '#justificativaInicioTerminoFeriadoFimSemana_input'
    element :justificativa_aereo_prazo_menor_definido_input, '#justificativaPassagemAerea_input'
    
    #mapeamento do elemento contendo o número da requisição
    element :numero_requisicao_input, '.container-fluid > div:nth-child(1) > div:nth-child(1) > cp-static-text:nth-child(1) > div:nth-child(2) > div:nth-child(1) > span:nth-child(1)'
                                       
    #modal - Adicionar Servidor - Limite de dias continuos
    element :adiconar_servidor_limite_dias_continuos_sim, '#btn1'
    element :adiconar_servidor_limite_dias_continuos_nao, '#btn2'

    #Campo - Valor Diária - Internacional
    element :valor_internacional_input, '#valorDiariaMoney_input'

    #botões - aba definir integrantes
    element :radio_definir_integrante, 'body > div.wrapper.ng-scope > application > pf-layout > div > div.content-layer.m-b-1 > ng-transclude > div > integrantes-ordem-cadastrar-ordem > div > div > div > div.tab-pane.ng-scope.active > div > div > div > div:nth-child(18) > div > cp-table-servidores-integrantes-remover > div > table > tbody > tr:nth-child(1) > td:nth-child(6) > input'
    element :botao_pesquisar_integrantes, 'pf-form-buttons[buttons="$ctrl.buttons.localizarIntegrantes"] span:nth-child(1) > a'
    element :botao_limpar, 'pf-form-buttons[buttons="$ctrl.buttons.localizarIntegrantes"] span:nth-child(2) > a'
    element :botao_voltar, 'pf-form-buttons[buttons="$ctrl.buttons.definirIntegrantes"] span:nth-child(1) > a'
    element :botao_cancelar, 'pf-form-buttons[buttons="$ctrl.buttons.definirIntegrantes"] span:nth-child(2) > a'
    element :botao_salvar, 'pf-form-buttons[buttons="$ctrl.buttons.definirIntegrantes"] span:nth-child(3) > a'
    element :botao_enviar, 'pf-form-buttons[buttons="$ctrl.buttons.definirIntegrantes"] span:nth-child(4) > a'


    def salvar
        botao_salvar.click
    end

    def cancelar
        botao_cancelar.click
    end

    def voltar
        botao_voltar.click
    end

    def enviar
        botao_enviar.click
    end

    def definir_integrantes
        definir_integrantes_button.click
    end

=begin

     * Métodos Referente aos Dados da Ordem
=end

#dados da missão
    def ordem_missao_policial
        wait_until_ordem_input_missao_policial_visible
        ordem_input_missao_policial.click
    end

    def ordem_servico
        ordem_input_servico.click
    end

    def missao_comum
        servico_comum_input.click
    end


    def missao_sigilosa
        servico_sigilosa_input.click
    end

    def cidade(info_cidade)
        cidade_uf_input.click
        select info_cidade, from: 'cidadeUF_input'
    end

    def tipo_destino(tipo, pais, uf, info_cidade)
        tipo_destino_input.click
        select tipo, from: 'tipoDeDestino_input'
        if tipo == 'Interestadual'
            destino_uf_input.click
            select uf, from: 'destinoUF_input'
            cidade info_cidade
        elsif tipo == 'Internacional'
            pais_input.click
            select pais, from: 'pais_input'
            cidade_input.click
            cidade_input.set info_cidade
        else
            cidade info_cidade
        end
    end
    #Data apresentada por default a data atual.
    def data_inicio(data1)
        @data1 = Time.now.strftime('%d/%m/%y')
        data_inicio_input.click.send_keys @data1
    end
    #Ajustar para buscar a data inicial - Divida Tecnica.
    # def data_inicio(data1)
    #     if data1 != ''
    #         @data1 = data1
    #         @data1 = Time.now.strftime('%d/%m/%y')
    #     else
    #         #@data1 = Time.now.strftime('%d/%m/%y')
    #     end
    #     10.times do
    #         data_inicio_input.click.send_keys :backspace
    #     end 
    #     data_inicio_input.click.send_keys @data1
    # end

    def data_fim(data2)
        data_fim_input.click.set data2
        find('label[for="duracao_input"]').click
    end

    def inquerito(numero_inquerito)
        num_inquerito_policial_input.click.set numero_inquerito
    end

    def area_atuacao(area_atua)
        area_atuacao_input.click
        select area_atua, from: 'areaAtuacao_input'
    end

    def unidade_inquerito_policial(unidade)
        unidade_inquerito_input.click
        if unidade == 'ACADEMIA NACIONAL DE POLICIA - ANP/DGP/PF'
            find('#ui-select-choices-row-0-0').select_option
        elsif unidade == 'DELEGACIA DE REPRESSAO A CRIMES PREVIDENCIARIOS  - DELEPREV/DRCOR/SR/PF/SC'
            find('#ui-select-choices-row-1-2 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'DELEGACIA DE REPRESSAO A CRIMES PREVIDENCIARIOS - DELEPREV/DRCOR/SR/PF/SE'
            find('#ui-select-choices-row-1-3 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'SERVICO DE POS-GRADUACAO - SPG/CESP/ANP/DGP/PF'
            find('#ui-select-choices-row-1-4 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'DELEGACIA DE REPRESSAO A CRIMES PREVIDENCIARIOS  - DELEPREV/DRCOR/SR/PF/SP'
            find('#ui-select-choices-row-1-5 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'DELEGACIA DE REPRESSAO A CORRUPCAO E CRIMES FINANCEIROS - DELECOR/DRCOR/SR/PF/MS'
            find('#ui-select-choices-row-1-6 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'UNIDADE TECNICO-CIENTIFICA - UTEC/DPF/JZO/BA'
            find('#ui-select-choices-row-1-7 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'DELEGACIA DE REPRESSAO A CORRUPCAO E CRIMES FINANCEIROS - DELECOR/DRCOR/SR/PF/MT'
            find('#ui-select-choices-row-1-8 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'DELEGACIA DE REPRESSAO A CRIMES PREVIDENCIARIOS -  DELEPREV/DRCOR/SR/PF/RR'
            find('#ui-select-choices-row-1-9 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'UNIDADE DE INTELIGENCIA POLICIAL - UIP/DPF/CGE/PB'
            find('#ui-select-choices-row-1-10 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'DELEGACIA DE REPRESSAO A CRIMES PREVIDENCIARIOS - DELEPREV/DRCOR/SR/PF/RS'
            find('#ui-select-choices-row-1-11 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'NUCLEO DE POLICIA DE IMIGRACAO - NUMIG/DPF/JZO/BA'
            find('#ui-select-choices-row-1-12 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'COORDENACAO-GERAL DE POLICIA DE IMIGRACAO - CGPI/DIREX/PF'
            find('#ui-select-choices-row-1-13 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'UNIDADE DE ATENDIMENTO MEDICO E BIOPSICOSSOCIAL - UAMB/SR/PF/RO'
            find('#ui-select-choices-row-1-14 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'SERVICO DE SEGURANCA AEROPORTUARIA - SAER/DCIM/CGPI/DIREX/PF'
            find('#ui-select-choices-row-1-15 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'UNIDADE DE ATENDIMENTO MEDICO E BIOPSICOSSOCIAL - UAMB/SR/PF/RS'
            find('#ui-select-choices-row-1-16 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'SERVICO DE ENSINO OPERACIONAL  - SEOP/DIDH/COEN/ANP/DGP/PF'
            find('#ui-select-choices-row-1-17 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'NUCLEO DE CONTROLE DE PRODUTOS QUIMICOS - NUCPQ/DPF/XAP/SC'
            find('#ui-select-choices-row-1-18 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'PROTOCOLO - PROTOCOLO/NAD/SELOG/SR/PF/GO'
            find('#ui-select-choices-row-1-19 > span:nth-child(1) > div:nth-child(1)').select_option
        end
    end

    def tipo_missao(descricao)
        tipo_missao_input.click
        select descricao, from: 'tipoMissao_input'
    end

   ##metódo interação lista orgão parceiros, este mesmo será usado no método orgaos_parceiros
   def interacao_orgao_parceiros(orgao_busca)
        @intervalo = 1
        while @intervalo < 100 do
            objeto = find(:xpath, "/html/body/div[1]/application/pf-layout/div/div[1]/ng-transclude/div/dados-ordem-cadastrar-ordem/div/div/div/div[1]/div/div/div/div[8]/div[2]/div/dual-list-box/div[2]/select/option[#{@intervalo}]")
            busca = objeto.text
            if busca == orgao_busca
                objeto.click
                find('button.fa:nth-child(2)').click
                break
            end
            @intervalo += 1
        end
    end

   def orgaos_parceiros(list_orgao_parceiro)
       orgaos_parceiros_input.click
       tamanho_list = list_orgao_parceiro.size
       @i = 0
       while @i < tamanho_list do
           interacao_orgao_parceiros list_orgao_parceiro[@i]
           @i += 1
       end
   end


#Diárias e Transporte
   #diárias
    def pagamento_sem_ressacimento(unidade)
        custo_diaria_pago_sem_ressacimento_input.click
        pagamento_transporte_input.click
        select unidade, from: 'pagasmentoTransporte_input'
        @duracao_maior = duracao_input.value

    end

    def pagamento_com_ressacimento(unidade, unidade2)
        custo_diaria_pago_com_ressacimento_input.click
        unidade_pagadora_transporte_input.click
        select unidade, from: 'unidadePagadoraTransporte_input'
        unidade_ressacimento_transporte_input.click
        select unidade2, from: 'unidadeRessacimentoTransporte_input'
    end

    def pagamento_outro_orgao(orgao)
        custo_diaria_pago_outo_orgao_input.click
        custo_diarias_transportecd_desc_orgao_input.click.set orgao
    end

    #Transporte
    def tipo_transporte(transporte, sub_tipo_transp)
        tipo_transporte_input.click
        select transporte, from: 'tipoTransporte_input'
        subtipo_transporte_input.click
        select sub_tipo_transp, from: 'subtipoTransporte_input'
    end

    def custo_passagem_paga(unidade)
        custo_passagem_pago.click
        pagasmento_passagens_input.click
        select unidade, from: 'pagasmentoPassagens_input'
    end

    def custo_passagem_paga_ressacimento(unidade, unidade2)
        custo_passagens_ressacimento_input.click
        unidade_pagadora_passagens_input.click
        select unidade, from: 'unidadePagadoraPassagens_input'
        unidade_ressacimento_passagens_input.click
        select unidade2, from: 'unidadeRessacimentoPassagens_input'
    end

    def custo_passagem_paga_outro_orgao(orgao)
        select_custo_passagens_transpore_pago_orgao_input.click
        custo_passagens_transpore_pago_orgao_input.click.set orgao
    end

    #centro de custo
    def centro_custo(codigo, centro)
        undefined_input.click.set(codigo).send_keys(:enter)
        centro_custo_input.click.set centro
    end

    def selecionar_autoridade(autoridade)
        find('#autoridade_input > div > span').click
        find(:xpath,'//*[@id="autoridade_input"]/input[1]').send_keys autoridade
        find('#ui-select-choices-row-0-0 > span').click
    end

    def anexar_arquivo(descricao)
        @anexar = Tools.new

        #setup arquivo
        caminho =  File.join(Dir.pwd, 'features/arquivo/PDF_TESTE.pdf').gsub(File::SEPARATOR, File::ALT_SEPARATOR || File::SEPARATOR)
        campo = 'fileInput'
        @anexar.upload caminho, campo
        descricao_anexo_input.set descricao
        find('.ng-binding').click

    end

    #A data já vem setada por default
    def adicionar_data(data)
        data_inclusao_input.set data
    end

=begin

     * Métodos Referente a Definir Integrantes
=end

    #método buscar servidor
    def buscando_servidor servidor, dias
        ultrapassa_limite_dias_continuos = false
        wait_until_servidores_input_visible
        servidores_input.set servidor
        botao_pesquisar_integrantes.click
        tamanho_dados = tabela.size
        @i = 0
        while @i < tamanho_dados do
            sleep(3)
            if servidor == tabela[0].text
                find('a.btn:nth-child(2)').click
                if page.has_css?('#modalDiasContinuos', wait: 5) == true
                    find('#btn1').click
                    ultrapassa_limite_dias_continuos = true
                end
                if @duracao_maior.to_i > 10
                   find('#btn1 > span:nth-child(1)').click
                end
                break
            end
            @i +=1
        end
        if ultrapassa_limite_dias_continuos == true
            find('#justificativaNecessidadeDeslocamentoServidorOutraUnidade_input').click.set 'Justificativa Necessidade Deslocamento Servidor Outra Unidade'
        end
    end
    #Método Localizar Integrantes
    def incluir_servidor servidor, dias
        buscando_servidor servidor, dias
        botao_limpar.click
    end

    def definir_chefe chefe
        botao_limpar.click
        #@posicao = 0
        find("cp-table-servidores-integrantes-remover.ng-isolate-scope > div:nth-child(1) > table:nth-child(2) > tbody:nth-child(2) > tr:nth-child(1) > td:nth-child(6) > input:nth-child(1)").click
        #tabela.each do |lista|
        #   if lista.text == chefe
        #        linha = (@posicao/7) + 1
        #        find("cp-table-servidores-integrantes-remover.ng-isolate-scope > div:nth-child(1) > table:nth-child(2) > tbody:nth-child(2) > tr:nth-child(1) > td:nth-child(6) > input:nth-child(1)").click
        #        break                                                                                                                                      #{linha}
        #    end
        #    @posicao +=1
        #end
    end

    #Método Definir um chefe da equipe
    def equipe nome_chefe
        definir_chefe nome_chefe
    end

    #método colaborador eventual
    def colaborador_eventual
        find('input[name="tipoIntegrantes_input"][value="C"]').click
    end

=begin

     * Métodos Referente a Classificação da Missão
=end

    #interesse
    def interesse(tipo_interesse, unidade_interessada)
        if tipo_interesse == 'Unidade Central'
            unidade_central_input.click
        else
            local_input.click
        end
        if unidade_interessada != nil
            unidade_interessada_input.click
            select unidade_interessada, from: 'unidadeInteressada_input'
        end
    end

    #Valor da Diária
    def info_valores_diarias(valores, data_apresentacao, horario_apresentacao)

        #Campo de diárias não está mais disponível na tela para edição
        # valor_diaria_classificacao_input.click
        # select valores, from: 'valorDiariaClassificacao_input'


        #por default o form data vem preenchida com a data posteriro da atual
        if data_apresentacao != ''
            data_apresentacao_input.click.set data_apresentacao
        end
            hora_apresentacao_input.click.send_keys(:space).set(horario_apresentacao)
    end

    def autoridade_determinante_ordem(autoridade_determinante)
        autoridade_determinante_input.set autoridade_determinante
        adc_autoridade_determinante_input.click
    end

end