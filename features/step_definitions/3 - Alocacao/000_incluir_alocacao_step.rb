#Alocação Serviço
@tipo_solicitacao = ''
primeiro_cargo = ''
segundo_cargo  = ''
@tipo_contingente = ''
@duracao = 0
Dado("realizo as definições seguintes: Tipo de Solicitação {string}, Tipo de Serviço {string},") do |solicitacao, missao|
    page_incluir_alocacao.tipo_solicitacao_servico solicitacao, missao
    @tipo_solicitacao = solicitacao
end

Dado("Tipo de Operação {string},") do |operacao|
    page_incluir_alocacao.operacao_alocacao operacao
end

#Alocação Mobilização
Dado("acesso a funcionalidade de Inclusão de Alocação") do
    menu.incluir_alocacao
end

Então("realizo as definições seguintes: Tipo de Solicitação {string}, Número de Inquérito Policial {string}, Tipo de Serviço {string},") do |solicitacao, 
                                                                                                                            nr_inquerito, missao|
    page_incluir_alocacao.tipo_solicitacao solicitacao, nr_inquerito, missao
end

Então("Tipo de Operação {string}, Unidade do Inquérito Policial {string},") do |operacao, unidade|
    page_incluir_alocacao.operacao_alocacao operacao
    page_formulario.unidade_inquerito_policial unidade
end

Dado("Área de Atuação {string}, Tipo da Missão {string},") do |area_atua, descricao|
    page_formulario.area_atuacao area_atua
    page_formulario.tipo_missao descricao
end

Dado("Data Inicio {string} com a data do dia atual por default, Data Término {string}, Duração em dias {string},") do |data1, data2, duracao|
    page_formulario.data_inicio data1
    page_formulario.data_fim data2
    @duracao = duracao
    page_incluir_alocacao.duracao_dias duracao
end

Dado("Destino {string}, UF {string} e Cidade {string} ou País {string} e Cidade {string},") do |destino, uf, cidade, pais, cidade_internacional|
    page_incluir_alocacao.tipo_destino destino, uf, cidade, pais, cidade_internacional
end

Então("Custo das Diárias {string} como {string} e o Ressarcimento como {string},") do |custo_diaria, sera_pago, ressarcimento|
    page_incluir_alocacao.custos_das_diarias custo_diaria, sera_pago, ressarcimento
end

Então("Custo das Passagens {string} como {string} e o Ressarcimento como {string},") do |custo_passagem, sera_pago_passagem, ressarcimento_passagem|
    page_incluir_alocacao.custos_das_passagens custo_passagem, sera_pago_passagem, ressarcimento_passagem
end

Dado("após realizar a definição dos dados da solicitação, realizo o preenchimento dos seguintes campos:") do |table|
    @campos_alocacao = table.rows_hash
    page_incluir_alocacao.preencher_campos_alocacao(@campos_alocacao, @tipo_solicitacao)
end

Então("acesso a Aba - Definir de Contingênte.") do
    page_incluir_alocacao.definir_contigente
end
#-----------------------------------------------------------------------------------------------------------------------------------------------------------#

    #Aba - Definir Contingente (Nominal):

#-----------------------------------------------------------------------------------------------------------------------------------------------------------#
Quando("Realizo as definições seguintes: Tipo de Contingente {string}, e informo os integrantes da alocacao") do |tipo_contingente|
    @tipo_contingente = tipo_contingente
    page_incluir_alocacao.definir_integrante_nominal
end
Quando("Autoridade {string}, Informações {string},") do |autoridade, informacoes|
    page_incluir_alocacao.autoridade_determinante_alocacao autoridade
    page_incluir_alocacao.adc_informacoes informacoes
end
Quando("unidade de interesse") do
    page_incluir_alocacao.interesse
end 
#-----------------------------------------------------------------------------------------------------------------------------------------------------------#

    #Aba - Definir Contingente (Por Cargo):

#-----------------------------------------------------------------------------------------------------------------------------------------------------------#

Então("Realizo as definições seguintes: Tipo de Contingente {string}, Cargos: {string}, {string},") do |tipo_contingente, p_cargo_escolhido, s_cargo_escolhido|
    page_incluir_alocacao.tipo_de_contingente tipo_contingente, p_cargo_escolhido, s_cargo_escolhido, @tipo_solicitacao
    primeiro_cargo = p_cargo_escolhido
    segundo_cargo  = s_cargo_escolhido
end

Então("Efetivo Próprio {string}, Efetivo Solicitado {string} com a opção de aceitação de alternativa {string} para o primeiro cargo,") do |p_efetivo_proprio, p_efetivo_solicitado, p_marcacao_alternativa|
    page_incluir_alocacao.definir_efetivo_primeiro_cargo p_efetivo_proprio, p_efetivo_solicitado, p_marcacao_alternativa, primeiro_cargo
end

Então("Efetivo Próprio {string}, Efetivo Solicitado {string} com a opção de aceitação de alternativa {string} para o segundo cargo,") do |s_efetivo_proprio, s_efetivo_solicitado, s_marcacao_alternativa|
    page_incluir_alocacao.definir_efetivo_segundo_cargo s_efetivo_proprio, s_efetivo_solicitado, s_marcacao_alternativa, segundo_cargo
end

Então("Perfil Necessário {string}, Autoridade {string}, Informações {string},") do |perfis_necessarios, autoridade, informacoes|
    page_incluir_alocacao.perfil_necessario perfis_necessarios
    page_incluir_alocacao.autoridade_determinante_alocacao autoridade
    page_incluir_alocacao.adc_informacoes informacoes
end

Então("Necessidade de viaturas de outras Unidades {string}, Justificativa de Transporte {string},") do |necessidade_transporte, justificativa_transporte|
    page_incluir_alocacao.transporte necessidade_transporte, justificativa_transporte
end

Então("Horário de Apresentação {string},") do |horario|
    page_incluir_alocacao.horario_apresentacao horario
end

Quando("Mais de cinco integrantes para o mesmo evento? {string}, Possivel Adiar Missao Servico? {string},") do |integrantes, adiar|
    page_incluir_alocacao.mais_cinco_integrantes integrantes
    page_incluir_alocacao.possivel_adia_missao_servico adiar
end

Então("Justifico caso haja a necessidade de mobilização de servidores de outras unidades {string},") do |just_servidor_outras_unidades|
    page_incluir_alocacao.justificativa_servidores_outras_unidades just_servidor_outras_unidades
end

Então("Justifico caso a mobilização no prazo menor que quinze dias {string},") do |just_mobilizacao_menor|
    page_incluir_alocacao.jutificativa_mobilizacao_menor just_mobilizacao_menor
end

Então("Justifico caso necessite de justificativa para passagem aérea no prazo menor que dez dias {string},") do |justificativa_passagem_aerea|
    page_incluir_alocacao.justificativa_prazo_aereo_menor justificativa_passagem_aerea
end

Então("Justifico caso o início ou término seja em  feriados ou finais de semana {string},") do |just_final_de_semana|
    page_incluir_alocacao.justificativa_final_feriado just_final_de_semana
end

Então("Realizo o envio da alocação e sou direcionado para a tela de Consulta de Alocação.") do
    page_incluir_alocacao.existe_finais_de_semana_e_feriados @duracao
    if @tipo_contingente == 'Nominal'
        nome_arquivo = 'numero_alocacao_nominal_gerada.text'
    else
        nome_arquivo = 'numero_alocacao_gerada.text'
    end
    page_incluir_alocacao.gravar_arquivo nome_arquivo , @tipo_contingente
    page_incluir_alocacao.enviar_alocacao
end
Dado("visualizo a alocacao gerada {string}") do |arquivo_alocacao|
    alocacao = page_autorizar_alocacao.recuperar_dados_alocacao arquivo_alocacao
    sleep(4)
    page_pesquisar.busca_alocacao alocacao
end
Então("visualizo os cargos solicitados.") do
    @cargos = page_incluir_alocacao.verificar_contigente_solicitado primeiro_cargo, segundo_cargo
    if (expect(page).to have_content @cargos[0].to_s)
        puts "Cargo Solicitado: "+primeiro_cargo+" - "+ @cargos[0]
    end
    if(expect(page).to have_content @cargos[1].to_s)
        puts "Cargo Solicitado: "+segundo_cargo+" - " + @cargos[1]
    end
end