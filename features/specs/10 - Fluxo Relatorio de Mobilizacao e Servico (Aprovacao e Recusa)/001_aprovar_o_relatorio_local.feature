#language: pt

Funcionalidade: Aprovar Relatório de Ordem de Missão/Serviço.
         
@aprovar_rmp

#Cenário de Aprovação.
@logout
@fluxo_de_ordem_e_relatorio_local_completo
Cenario: Aprovar Relatório de Ordem de Mobilização/Serviço (local).
    Dado que estou logado no sistema com o usuário 'anatelma.atrs' e senha 'ctidpf'
    E seleciono a unidade de exercicio
    E aciono o detalhamento do relatório enviada para avaliação do AD "numero_requisicao_aprovacao_ad.text",
    Então aprovo o relatório de missão.

@logout
@fluxo_de_ordem_e_relatorio_local_terceirizado
Cenario: Aprovar Relatório de Ordem de Mobilização/Serviço Terceirizado(local).
    Dado que estou logado no sistema com o usuário 'costa.rcc' e senha 'ctidpf'
    E seleciono a unidade de exercicio
    E aciono o detalhamento do relatório enviada para avaliação do AD "numero_requisicao_aprovacao_ad.text",
    Então aprovo o relatório de missão.
