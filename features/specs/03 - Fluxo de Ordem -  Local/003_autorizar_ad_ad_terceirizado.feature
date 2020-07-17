#language: pt

    Funcionalidade: Autorizar OMP/OS pela autoridade Determinante - Terceirizado.

    #Smoke Teste  Incluir Ordem sem custo eaprovar pelo AD. - @Smoke_Aprovar_AD
    #@Smoke_Aprovar_AD_Terceirizado
    
    @logout
    @prorrogar_ordem_local_terceirizado
    @prorrogar_ordem_local_terceirizado_aprovar_ad
    @Fluxo_aprovar_ordem_local_terceirizado_ad
    @fluxo_de_ordem_e_relatorio_local_terceirizado
    @Fluxo_Sistema_Completo
    
    Cenario: Realizar Autorização da Ordem Terceirizada pela Autoridade Determinante

        Dado que estou logado no sistema com o usuário 'costa.rcc' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        Quando visualizo a ordem 'numero_requisicao_aprovacao_ad.text',
        E justifico a autorização 'Justificativa Autorizacao AD - Automação' por meio da Autoridade Determinante,
        Entao vejo a mensagem 'Operação realizada com sucesso!'