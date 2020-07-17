class Alocacao < SitePrism::Page

    def initialize
        #setup para utilizar as informações de acordo com as classes carregadas
        @menu = Menu.new
        #@pesquisar = Pesquisar.new
        @tools = Tools.new
        @formulario = Formulario.new
        @data_analise = Data_verificacao.new
        @integrantes = Integrantes.new

    end

    #----------------------------------------------------------------------------------#
    #       Analista de Automação Responsável = Lucas Dias                             #
    #----------------------------------------------------------------------------------#
    
    #Elementos, referentes a tela de alocação:
        element :numero_solicitacao_input, '#numeroSolicitacao_input'
        element :pesquisar_alocacao, 'div.col-sm-2:nth-child(2) > pf-form-buttons:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1) > a'
        element :radio_solicitacao_missao, 'input[id="alocacao_input"][value="P"]'
        element :radio_solicitacao_servico, 'input[id="alocacao_input"][value="S"]'
        element :radio_missao_comum, 'input[id="missao_input"][value="C"]'
        element :radio_missao_sigilosa, 'input[id="missao_input"][value="S"]'
        element :numero_inquerito_input, '#numInqueritoPolicial_input'
        element :operacao_input, '#operacao_input'
        element :radio_destino_nacional, 'input[id="destino_input"][value="NACIONAL"]'
        element :radio_destino_internacional, 'input[id="destino_input"][value="INTERNACIONAL"]'
        element :uf_input, '#uf_input'
        element :cidade_input, '#cidade_input'
        element :pais_input, '#pais_input'
        element :cidade_internacional_input, '#cidadePais_input'
        element :radio_custo_diaria_nao_havera, 'input[name="custoDiariasTransportenaoHavera"]'
        element :radio_SeraPagoSemR, 'input[name="custoDiariasTransporteseraPagoPor"]'
        element :pagamento_transporte_input, '#pagasmentoTransporte_input'
        element :radio_SeraPagoComR, 'input[name="custoDiariasTransporteseraPagoPorRessarcimento"]'
        element :pagamento_transporte_r_input, '#unidadePagadoraTransporte_input'
        element :ressarcimento_input, '#unidadeRessacimentoTransporte_input'
        element :radio_custo_passagem_nao_havera, 'input[name="custoPassagensTransporenaoHavera"]'
        element :radio_SeraPagoSemR_Passagem, 'input[name="custoPassagensTransporeseraPagoPor"]'
        element :pagamento_transporte_passagem_input, '#pagasmentoPassagens_input'
        element :radio_SeraPagoComR_Passagem, 'input[name="custoPassagensTransporeseraPagoPorRessarcimento"]'
        element :pagamento_transporte_r_passagem_input, '#unidadePagadoraPassagens_input'
        element :ressarcimento_passagem_input, '#unidadeRessacimentoPassagens_input'
        element :local_apresentacao_input, '#localApresentacao_input'
        element :descricao_input, '#descMissao_input'
        element :dados_conhecidos_input, '#dadosConhecidos_input'
        element :recomendacoes_input, '#recomendacoes_input'
        element :siorg_input, '#unidade_input'
        element :centro_custo_input, '#centroCusto_input'
        element :armamento_input, '#armamento_input'
        element :telecomunicacao_input, '#telecomunicacao_input'
        element :vestuario_input, '#vestuario_input'
        element :outros_input, '#outroEquipamentos_input'
        element :duracao_input, '#duracao_input'
        element :definir_contigente_button, :xpath, '//dados-solicitacao-alocacao//pf-form-buttons/div/div/div/span[3]/a'
        
        # Elementos da ABA - Definir Contingente.

        element :contigente_cargo, 'input[id="tipoContingente_input"][value="C"]'
        element :contingente_nominal, 'input[id="tipoContingente_input"][value="N"]'
        element :cargo_escolhido_input, '#cargos_input'
        element :botao_desconsiderar, '#btn1'
        element :adc_cargo_servico, :xpath, '//contigente-alocacao-policial//div[7]//pf-form-buttons//div/span/a'     
        element :adc_cargo_missao, :xpath, '//contigente-alocacao-policial//div[8]//pf-form-buttons//div/span/a'     
        element :p_efetivo_proprio_input, '#servidoresUnidadeAGENTE\ DE\ POLICIA\ FEDERAL_input'
        element :s_efetivo_proprio_input, '#servidoresUnidadeDELEGADO\ DE\ POLICIA\ FEDERAL_input'
        element :p_efetivo_solicitado_input, '#servidoresSolicitadoAGENTE\ DE\ POLICIA\ FEDERAL_input'
        element :s_efetivo_solicitado_input, '#servidoresSolicitadoDELEGADO\ DE\ POLICIA\ FEDERAL_input'
        element :p_marcacao, 'input[id="null_input"][name="0_input"]'
        element :s_marcacao, 'input[id="null_input"][name="1_input"]'
        element :perfil_necessario_input, '#perfilNecessario_input'
        element :autoridade_determinante_input, '#autoCompleteAutoridade_input'
        element :adc_autoridade_determinante, '.uib-typeahead-match.ng-scope.active'
        element :informacoes_input, '#informacoes_input'
        element :interesse_unidade_central, 'input[id="interesse_input"][value="1"]'
        element :interesse_unidade_regional, 'input[id="interesse_input"][value="2"]'
        element :sim_necessidade_viatura, 'input[id="necesssidadeViaturas_input"][value="S"]'
        element :nao_necessidade_viatura, 'input[id="necesssidadeViaturas_input"][value="N"]'
        element :justificativa_transporte_input, '#justificativaNecessidadeViaturas_input'
        element :sigilo_deslocamento_sim, 'input[id="sigiloDelocamento_input"][value="S"]'
        element :sigilo_deslocamento_nao, 'input[id="sigiloDelocamento_input"][value="N"]'
        element :horario_apresentacao_input, '#horaApresentacao_input'
        element :curso_formacao_sim, 'input[id="cursosClassificacao_input"][value="S"]'
        element :curso_formacao_nao, 'input[id="cursosClassificacao_input"][value="N"]'
        element :integrantes_cinco_sim, 'input[id="maisCincoServidores_input"][value="S"]'
        element :integrantes_cinco_nao, 'input[id="maisCincoServidores_input"][value="N"]'
        element :possivel_adiar_alocacao_sim_input, 'input[id="adiarMissaoServico_input"][value="S"]'
        element :possivel_adiar_alocacao_nao_input, 'input[id="adiarMissaoServico_input"][value="N"]'
        element :justificativa_servidores_outras_unidades_input, '#justificativaServidoresOutrasUnidades_input'
        element :justificativa_mobilizacao_menor_input, '#justificativaPrazoParametrizado_input'
        element :justificativa_passagem_aerea_input, '#justificativaPassagemAerea_input'
        element :justificativa_final_feriado_input, '#justificativaFeriadosOuFinaisSemana_input'
        #element :enviar,'html body.ng-scope.block-ui.block-ui-anim-fade div.wrapper.ng-scope application.ng-scope.ng-isolate-scope pf-layout.ng-isolate-scope div div.content-layer.m-b-1 ng-transclude div.content-wrapper.ng-scope.ng-fadeInRight contigente-alocacao-policial.ng-scope.ng-isolate-scope div.ng-scope div.ng-isolate-scope div.tab-content div.tab-pane.ng-scope.active div.ng-scope div.container-fluid.m-l-1.ng-scope div.form-vertical.ng-pristine.ng-valid-mask.ng-invalid.ng-invalid-required.ng-valid-maxlength.ng-valid-minlength.ng-valid-time div.row div.col-sm-12 pf-form-buttons.ng-isolate-scope div.row div.form-buttons-group.form-buttons-decoration div.col-md-12 span.form-buttons-wrapper.ng-scope a.ng-scope.btn.btn-outline-success'
        element :enviar, :xpath, '//a/span[text()=" Enviar"]'
        element :numero_alocacao, 'contigente-alocacao-policial > div > div > div > div.tab-pane.ng-scope.active > div > div > div > div:nth-child(2) > div:nth-child(1) > cp-static-text > div > div > span:nth-child(2)'
        element :aba_contigente_solicitado, 'li.uib-tab:nth-child(2) > a:nth-child(1)'

        #Definir Integrantes Nominal
        element :modal_confirmar, '#modal-title'
        element :botao_continuar, :xpath, '//a/span[text()=" Continuar"]'
        element :servidor_input, '#servidores_input'
        element :botao_pesquisar,:xpath, '//a/span[text()=" Pesquisar"]'
        element :incluir_servidor, 'div.col-sm-12:nth-child(3) > pf-table:nth-child(1) > div:nth-child(1) > table:nth-child(2) > tbody:nth-child(2) > tr:nth-child(1) > td:nth-child(5) > a:nth-child(2)'
        element :botao_limpar, 'div.row:nth-child(14) > div:nth-child(2) > pf-form-buttons:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > span:nth-child(2) > a:nth-child(1)'

        #Tabela de cargos solicitados na alocação
        elements :tabela_contigente_solicitado, :xpath, '//cp-table-contingente-solicitado//table/tbody/tr' 
    @custo_com_passagem = ''
    #Método para escolha do tipo de solicitação de mobilização.
    def tipo_solicitacao(solicitacao, nr_inquerito, missao)

        if solicitacao == 'Mobilização'
            radio_solicitacao_missao.click
            numero_inquerito_input.set nr_inquerito
        else
            radio_solicitacao_servico.click
        end

        if missao == 'Comum'
            radio_missao_comum.click
        else
            radio_missao_sigilosa.click
        end
        
    end
    def definir_integrante_nominal
        contingente_nominal.click
        #Confirma a mensagem apresentada: "Todo o contingente selecionado será desconsiderado."
        botao_continuar.click
        
        i = 0
        while  i < 3
            servidor_input.set @integrantes.definir_integrantes
            botao_pesquisar.click
            if element_visible? '.btn.btn-success.btn-xs'
                incluir_servidor.click
            end
            botao_limpar.click
            i += 1
        end
    end
    def tipo_solicitacao_servico(solicitacao, missao)

        if solicitacao == 'Serviço'
            radio_solicitacao_servico.click
        else
            radio_solicitacao_missao.click
        end

        if missao == 'Comum'
            radio_missao_comum.click
        else
            radio_missao_sigilosa.click
        end
        
    end

    def operacao_alocacao(operacao)
        operacao_input.click
        select operacao, from: 'operacao_input'
    end

    #Escolha do Tipo de Destino para a Mobilização.
    def tipo_destino(destino, uf, cidade, pais, cidade_internacional)
        
        if destino == 'Nacional'
            radio_destino_nacional.click
            uf_input.click
            select uf, from: 'uf_input'
            cidade_input.click
            select cidade, from: 'cidade_input'
        else
            radio_destino_internacional.click
            pais_input.click
            select pais, from: 'pais_input'
            cidade_internacional_input.click.set cidade_internacional
        end

    end

    #Método para definição dos custos das diárias.

    def custos_das_diarias(custo_diaria, sera_pago, ressarcimento)

        if custo_diaria == 'Não haverá'
            radio_custo_diaria_nao_havera.click
        elsif custo_diaria == 'Será pago por'
            radio_SeraPagoSemR.click
            pagamento_transporte_input.click
            select sera_pago, from: 'pagasmentoTransporte_input'
        elsif custo_diaria == 'Será pago por R'
            radio_SeraPagoComR.click
            pagamento_transporte_r_input.click
            select sera_pago, from: 'unidadePagadoraTransporte_input'
            ressarcimento_input.click
            select ressarcimento, from: 'unidadeRessacimentoTransporte_input'
        end
    end
       
    #Método para definição dos custos das diárias.

    def custos_das_passagens(custo_passagem, sera_pago_passagem, ressarcimento_passagem)
        @custo_com_passagem = custo_passagem
        if custo_passagem == 'Não haverá'
            radio_custo_passagem_nao_havera.click
        elsif custo_passagem == 'Será pago por'
            radio_SeraPagoSemR_Passagem.click
            pagamento_transporte_passagem_input.click
            select sera_pago_passagem, from: 'pagasmentoPassagens_input'
        elsif custo_passagem == 'Será pago por R'
            radio_SeraPagoComR_Passagem.click
            pagamento_transporte_r_passagem_input.click
            select sera_pago_passagem, from: 'unidadePagadoraPassagens_input'
            ressarcimento_passagem_input.click
            select ressarcimento_passagem, from: 'unidadeRessacimentoPassagens_input'
        end

    end

    def preencher_campos_alocacao(campos_alocacao, tipo_solicitacao)

        local_apresentacao_input.set (campos_alocacao[:Local_Apresentacao])
        descricao_input.set (campos_alocacao[:Descricao])
        dados_conhecidos_input.set (campos_alocacao[:Dados_Conhecidos_Restricoes])
        recomendacoes_input.set (campos_alocacao[:Recomendacoes])
        siorg_input.set (campos_alocacao[:Codigo_Siorg])
        centro_custo_input.click.set (campos_alocacao[:Centro_de_Custo])
        if tipo_solicitacao == "Mobilização"
            armamento_input.set (campos_alocacao[:Armamento])
        end
        telecomunicacao_input.set (campos_alocacao[:Telecomunicacao])
        vestuario_input.set (campos_alocacao[:Vestuario])
        outros_input.set (campos_alocacao[:Outros])
    end

    def duracao_dias(duracao)
        duracao_input.set duracao
    end

    def definir_contigente
        #Grava as informações de data para validações futuras.
        @data_inicio = @formulario.data_inicio_input.value
        @data_fim = @formulario.data_fim_input.value
        definir_contigente_button.click
    end

    def tipo_de_contingente(tipo_contingente, p_cargo_escolhido, s_cargo_escolhido, tipo_solicitacao)

        if tipo_contingente == 'Por Cargo'
            #Clica no botão "Por Cargo"
            contigente_cargo.click
            #Confirma a mensagem apresentada: "Todo o contingente selecionado será desconsiderado."
            botao_desconsiderar.click
            #Seleciona o tipo de cargo
            i = 1
            while i <= 2 do
                cargo_escolhido_input.click
                if i == 1
                    #Seleciona o Primeiro Cargo.
                    select p_cargo_escolhido, from: 'cargos_input'
                else
                    #Seleciona o Segundo Cargo.
                    select s_cargo_escolhido, from: 'cargos_input'
                end

                if tipo_solicitacao == 'Serviço'
                    adc_cargo_servico.click
                else
                    adc_cargo_missao.click
                end
                i += 1
            end
        #else 
            #Clica no botão "Nominal"
        #    contingente_nominal.click
        #    botao_desconsiderar.click
        end
    end
        #Primeiro Cargo Escolhido.
    def definir_efetivo_primeiro_cargo(p_efetivo_proprio, p_efetivo_solicitado, p_marcacao_alternativa, primeiro_cargo)
        find(:xpath, '//*[@id="servidoresUnidade'+primeiro_cargo.upcase+'_input"]').set p_efetivo_proprio
        #p_efetivo_proprio_input.set p_efetivo_proprio
        find(:xpath, '//*[@id="servidoresSolicitado'+primeiro_cargo.upcase+'_input"]').set p_efetivo_solicitado
        #p_efetivo_solicitado_input.set p_efetivo_solicitado

        if p_marcacao_alternativa == 'marcada'
            p_marcacao.click
        end
    end
        #Segundo Cargo Escolhido.
    def definir_efetivo_segundo_cargo(s_efetivo_proprio, s_efetivo_solicitado, s_marcacao_alternativa, segundo_cargo)
        
        find(:xpath, '//*[@id="servidoresUnidade'+segundo_cargo.upcase+'_input"]').set s_efetivo_proprio
        #p_efetivo_proprio_input.set p_efetivo_proprio
        find(:xpath, '//*[@id="servidoresSolicitado'+segundo_cargo.upcase+'_input"]').set s_efetivo_solicitado
        #p_efetivo_solicitado_input.set p_efetivo_solicitado

        #s_efetivo_proprio_input.set s_efetivo_proprio
        #s_efetivo_solicitado_input.set s_efetivo_solicitado

        if s_marcacao_alternativa == 'marcada'
            s_marcacao.click
        end
    
    end

    def perfil_necessario(perfis_necessarios)
        perfil_necessario_input.set perfis_necessarios
    end

    def interesse
        interesse_unidade_central.click
    end

    def autoridade_determinante_alocacao(autoridade)
        autoridade_determinante_input.set autoridade
        adc_autoridade_determinante.click
    end

    def adc_informacoes(informacoes)
        informacoes_input.set informacoes
    end

    def transporte(necessidade_transporte, justificativa_transporte)

        if necessidade_transporte == 'Sim'
            sim_necessidade_viatura.click
            justificativa_transporte_input.set justificativa_transporte
        else 
            nao_necessidade_viatura.click
        end
    
    end

    def sigilo_deslocamento(sigilo)

        if sigilo == 'Sim'
            sigilo_deslocamento_sim.click
        elsif sigilo == 'Não'
            sigilo_deslocamento_nao.click
        end

    end

    def horario_apresentacao(horario)
        horario_apresentacao_input.click.set horario
        horario_apresentacao_input.set horario
    end

    def curso_formacao(curso)

        if curso == 'Sim'
            curso_formacao_sim.click
        else curso == "Não"
            curso_formacao_nao.click
        end
    
    end

    def mais_cinco_integrantes(integrantes)

        if integrantes == "Sim"
            integrantes_cinco_sim.click
        else
            integrantes_cinco_nao.click
        end

    end

    def possivel_adia_missao_servico(adiar)
        if @custo_com_passagem[1] != 'Não haverá'
            if adiar.upcase == "SIM"
                possivel_adiar_alocacao_sim_input.click
            else
                possivel_adiar_alocacao_nao_input.click
            end
        end
    end

    def justificativa_servidores_outras_unidades(just_servidor_outras_unidades)
        justificativa_servidores_outras_unidades_input.set just_servidor_outras_unidades
    end

    def jutificativa_mobilizacao_menor(just_mobilizacao_menor)
        justificativa_mobilizacao_menor_input.set just_mobilizacao_menor
    end

    def justificativa_prazo_aereo_menor(justificativa_passagem_aerea)
        justificativa_passagem_aerea_input.set justificativa_passagem_aerea
    end

    def justificativa_final_feriado(just_final_de_semana)
        justificativa_final_feriado_input.set just_final_de_semana
    end

    def enviar_alocacao
        enviar.click
    end

    def gravar_arquivo(nome_arquivo, tipo_contingente)
        dados_gravados = numero_alocacao.text
        @tools.gerar_dados_alocacao nome_arquivo, dados_gravados
        puts "\nAlocação #{tipo_contingente} Gerada: Nº #{dados_gravados}"
    end
    def existe_finais_de_semana_e_feriados(duracao)
        
        if @data_analise.final_de_semana @data_inicio, duracao or @data_analise.feriado @data_inicio, duracao
            if @tools.element_visible? '#justificativaFeriadosOuFinaisSemana_input'
                find('#justificativaFeriadosOuFinaisSemana_input').click.set  "Justificativa para início ou término em feriados ou finais de semana - Automação"
            end
        end
        #if  @data_analise.data_final_semana_inicio  @data_inicio or @data_analise.data_feriado @data_inicio or @data_analise.data_final_semana_fim  @data_fim or @data_analise.data_feriado @data_fim
            #if @tools.element_visible? '#justificativaFeriadosOuFinaisSemana_input'
            #    find('#justificativaFeriadosOuFinaisSemana_input').click.set  "Justificativa para início ou término em feriados ou finais de semana - Automação"
            #end
        #end
    end
    def verificar_contigente_solicitado primeiro_cargo, segundo_cargo
        cargo1 = cargo_informado primeiro_cargo
        cargo2 = cargo_informado segundo_cargo
        aba_contigente_solicitado.click
        
        return cargo1, cargo2
    end
    def cargo_informado(cargo_servidor)
        case cargo_servidor
            #Cargos Missão
            when 'AGENTE DE POLICIA FEDERAL'        then return 'APF'
            when 'DELEGADO DE POLICIA FEDERAL'      then return 'DPF'
            when 'AGENTE FEDERAL DE EXECUÇÃO PENAL' then return 'AGEPEN'
            when 'ESCRIVAO DE POLICIA FEDERAL'      then return 'EPF'
            when 'PAPILOSCOPISTA POLICIAL FEDERAL'  then return 'PPF'
            when 'PERITO CRIMINAL FEDERAL'          then return 'PCF'

            #Cargos Seriço
            when 'ESPECIALISTA EM POLITICAS PUBLICAS E GESTAO GOVERNAMENTAL' then return 'EPPGG'    
            when 'AGENTE CINEFOTOGRAFIA E MICROFILMAGEM'    then return 'AGCIMIC'    
            when 'AGENTE DE TELECOMUNICAÇÃO E ELETRICIDADE' then return 'ATE'
            when 'AUXILIAR OPERACIONAL SERVICOS DIVERSOS'   then return 'AOSD'
            when 'TECNICO EM ASSUNTOS EDUCACIONAIS'         then return 'TAE'
            when 'ADMIN EGP'                   then return 'ADMINEGP'
            when 'ADMINISTRADOR'               then return 'ADM'
            when 'ADVOGADO DA UNIAO'           then return 'AU'      
            when 'AGENTE ADMINISTRATIVO'       then return 'AGADM'
            when 'ANALISTA DE SISTEMAS'        then return 'ANASIS'
            when 'ARQUITETO'                   then return 'ARQT'
            when 'ARQUIVISTA'                  then return 'ARQ'
            when 'ARTIFICE'                    then return 'ARTF'
            when 'ASSISTENTE ADMINISTRATIVO'   then return 'ASSADM'
            when 'ASSISTENTE DE ADMINISTRAÇÃO' then return 'ASSADM'
            when 'AUXILIAR ADMINISTRATIVO'     then return 'AUXADM'
            when 'ASSISTENTE SOCIAL'           then return 'AS'
            when 'AUXILIAR DE ENFERMAGEM'      then return 'AUXENF'
            when 'AUXILIAR DE SERVICOS GERAIS' then return 'AUXSERVG'
            when 'BIBLIOTECARIO'               then return 'BIBL'
            when 'CONTADOR'                    then return 'CONT'
            when 'ENFERMEIRO'                  then return 'ENF'
            when 'ENGENHEIRO'                  then return 'ENG'
            when 'ENGENHEIRO DE PESCA'         then return 'ENGPESCA'
            when 'ENGENHEIRO ELETRICO'         then return 'ENGELETRIC'
            when 'ESCRITURARIO'                then return 'ESCR'
            when 'ESTATISTICO'                 then return 'ESTAT'
            when 'FARMACEUTICO'                then return 'FAMAC'
            when 'MEDICO VETERINARIO'          then return 'MEDVET'
            when 'MEDICO'                      then return 'MED'
            when 'MOTORISTA OFICIAL'           then return 'MOTOF'
            when 'ODONTOLOGO'                  then return 'ODONT'
            when 'NUTRICIONISTA'               then return 'NUTRIC'
            when 'PSICOLOGO'                   then return 'PISIC'
            when 'SERVIDOR EM DISPONIBILIDADE' then return 'DISPON'
        end
    end
    
    def element_visible?(element_id)
        exists = page.has_css?(element_id)
        return (exists)
    end

    def pesquisar_alocacao(alocacao)
        numero_solicitacao_input.set alocacao
        pesquisar_alocacao.click
    end

end