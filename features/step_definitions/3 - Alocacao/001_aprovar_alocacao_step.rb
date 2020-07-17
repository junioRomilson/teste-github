
#Aprovar Alocação pela Autoridade Determinante.

Dado("acesso a funcionalidade de Aprovação de Solicitação de Alocação pela AD,") do    
    page_autorizar_alocacao.sal_pendente_aprovacao
end

Dado("visualizo a alocação gerada e Pendente de Aprovação pelo AD {string},") do |arquivo_alocacao|
    alocacao = page_autorizar_alocacao.recuperar_dados_alocacao arquivo_alocacao
    page_autorizar_alocacao.relatar_alocacao alocacao
end

Então("realizo a {string} da alocação e visualizo a mensagem de sucesso.") do |nome_arquivo|
    page_autorizar_alocacao.acoes_alocacao nome_arquivo
end


#Aprovar Alocação pela Autoridade Superior.

Dado("acesso a funcionalidade de Aprovação de Solicitação de Alocação pela AS,") do
    page_autorizar_alocacao.sal_pendente_aprovacao_as
end

Dado("visualizo a alocação gerada e Pendente de Aprovação pelo AS {string},") do |arquivo_alocacao|
    alocacao = page_autorizar_alocacao.recuperar_dados_alocacao arquivo_alocacao
    page_autorizar_alocacao.relatar_alocacao_as alocacao
end

Dado("aciono a opção {string} quando apresentada a mensagem de existência de ordem do tipo M para outra unidade,") do |msg_mob_outra_unidade|
    page_autorizar_alocacao.msg_ordem_unidade msg_mob_outra_unidade
end

Dado("preencho a justificativa para servidores de outras unidades {string},") do |justificativa_outras_unidades|
    page_autorizar_alocacao.serv_outra_unidade justificativa_outras_unidades
end

Então("realizo a {string} e justifico {string}.") do |acoes_solicitadas_as, justificativa_aprovar|
    page_autorizar_alocacao.acoes_alocacao_as acoes_solicitadas_as, justificativa_aprovar
end

#Aprovar Alocação pela Diretor.

Dado("acesso a funcionalidade de Aprovação de Solicitação de Alocação pelo Diretor,") do
    page_autorizar_alocacao.sal_pendente_aprovacao_diretor
end
  
Dado("visualizo a alocação gerada e Pendente de Aprovação pelo Diretor {string},") do |arquivo_alocacao|
    alocacao = page_autorizar_alocacao.recuperar_dados_alocacao arquivo_alocacao
    page_autorizar_alocacao.relatar_alocacao_as alocacao
end

#Aprovar Alocação pela Diretor Geral.

Dado("acesso a funcionalidade de Aprovação de Solicitação de Alocação pelo Diretor Geral,") do
    page_autorizar_alocacao.sal_pendente_aprovacao_diretor_geral
end
  
Dado("visualizo a alocação gerada e Pendente de Aprovação Diretor Geral {string},") do |arquivo_alocacao|
    alocacao = page_autorizar_alocacao.recuperar_dados_alocacao arquivo_alocacao
    page_autorizar_alocacao.relatar_alocacao_as alocacao
end

Dado("visualizo a alocação gerada e Pendente de Aprovação {string},") do |arquivo_alocacao|
    alocacao = page_autorizar_alocacao.recuperar_dados_alocacao arquivo_alocacao
    page_autorizar_alocacao.relatar_alocacao alocacao
end
