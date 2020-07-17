#language: pt

Funcionalidade: Autorizar Ordem de Missão ou Serviço pela Autoridade Determinante.

    @logout
    #@Smoke_Aprovar_AD_AS_DG_Terceirizado
    
    @desmembrar_ordem_fluxo_completo_terceirizado
    @Fluxo_aprovar_oms_as_terceirizado
    @Fluxo_aprovar_oms_ad_terceirizado
    @fluxo_aprovar_oms_assessor_terceirizado
    @Fluxo_completo_oms_terceirizado
    @Fluxo_Sistema_Completo

    Cenario: Autorizar Ordem pela autoridade Determinante.

        Dado que estou logado no sistema com o usuário 'costa.rcc' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        Quando visualizo a ordem 'numero_requisicao_aprovacao_ad_e_as.text',
        E justifico a autorização 'Justificativa Autorizacao AD - Automação' por meio da Autoridade Determinante,
        Entao vejo a mensagem 'Operação realizada com sucesso!'
