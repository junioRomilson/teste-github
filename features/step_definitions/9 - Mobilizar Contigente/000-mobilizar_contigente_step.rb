#Mobilizar Contigente Pelo SEMOB
alocacao = " "
tipo_solicitado = ""
Dado("acesso a funcionalidade de Mobilizar Contigente {string},") do |tipo_solicitacao|
    page_mobilizar_contigente.sal_pendente_recrutamento
    tipo_solicitado = tipo_solicitacao
end

Dado("visualizo a alocação gerada e Pendente de Recrutamento pelo SEMOB {string},") do |arquivo_alocacao|
    alocacao = page_mobilizar_contigente.recuperar_dados_alocacao arquivo_alocacao
    page_mobilizar_contigente.relatar_alocacao_semob alocacao
    page_mobilizar_contigente.mobilizar_contingente 
end

Dado("realizo a distribuição da quantidade de contigente") do
    page_mobilizar_contigente.definir_quantidade_contigente tipo_solicitado
end
Entao("visualizo as SATs geradas") do
    page_mobilizar_contigente.visualizar_SATS_geradas alocacao
end
Dado("seleciono o analista responsavel da alocacao {string},") do |arquivo_alocacao|
    alocacao = page_mobilizar_contigente.recuperar_dados_alocacao arquivo_alocacao
    page_mobilizar_contigente.analista_responsavel alocacao 
end
Dado("verifico se o campo analista responsavel foi salvo") do
    page_mobilizar_contigente.verificar_analista_responsavel
end