#language: pt

Funcionalidade: Recusar Relatório de Ordem de Missão/Serviço.
    
    Contexto: Sistema Logado
        Dado que estou logado no sistema com o usuário 'anatelma.atrs' e senha 'ctidpf'
        E seleciono a unidade de exercicio

@logout
@fluxo_recusar_ordem_e_relatorio_local_completo

#Cenário de Recusa.
    Cenario: Recusar Relatório de Ordem de Missão/Serviço (local).
        E aciono o detalhamento do relatório enviada para avaliação do AD "numero_requisicao_aprovacao_ad.text",
        E preencho a justificativa de recusa "Justificativa de recusa pela Autoridade Determinante - Automação"
        Então recuso o relatório de missão.