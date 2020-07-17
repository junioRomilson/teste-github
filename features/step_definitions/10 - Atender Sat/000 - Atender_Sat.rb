

#----------------------------------------------------------------------------------#
#          Atender Solicitação de Atendimento pela Autoridade Superior             #
#----------------------------------------------------------------------------------#

Dado("acesso a funcionalidade de Aprovação de Solicitação de Atendimento pela AS,") do
    page_sat.sat_pendente_aprovacao_as  
end
  
Dado("visualizo a sat gerada e Pendente de Aprovação pelo AS {string},") do |arquivo_sat|
    sat = page_sat.recuperar_dados_sat arquivo_sat
    page_sat.relatar_sat_as sat
end
Dado("atendo a solicitacao, informando a unidade responsavel pelo atendimento {string}") do |unidade|
    page_sat.unidade_responsavel_atendimento unidade
    page_sat.atender_solicitacao
end
Entao("visualizo a seguinte mensagem {string}") do |menssagem|
    expect(page).to have_content menssagem
end

#----------------------------------------------------------------------------------#
#          Atender Solicitação de Atendimento pelo Responsável Atendimento         #
#----------------------------------------------------------------------------------#

Dado("acesso a funcionalidade de Aprovação de Solicitação de Atendimento pelo Responsavel Atendimento,") do
    #page_sat.sat_pendente_responsavel_atendimento
end
  
Dado("visualizo a sat gerada e Pendente de Atendimento {string},") do |arquivo_sat|
    sat = page_sat.recuperar_dados_sat arquivo_sat
    page_sat.relatar_sat_responsavel_atendimento sat
end
Dado("seleciono gerar ordem") do
    page_sat.gerar_ordem
end
  
Dado("informo o cargo, e seleciono os integrantes da ordem, e depois incluo a ordem tipo M") do
    page_sat.dados_ordem
end