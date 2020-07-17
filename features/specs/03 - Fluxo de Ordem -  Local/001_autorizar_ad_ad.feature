#language: pt

    Funcionalidade: Autorizar OMP/OS pela autoridade Determinante

    #Smoke Teste  Incluir Ordem sem custo eaprovar pelo AD. - @Smoke_Aprovar_AD
    #@Smoke_Aprovar_AD
    
    @logout
    @fluxo_de_ordem_e_relatorio_local_completo 
    @fluxo_recusar_ordem_e_relatorio_local_completo   
    @prorrogar_ordem_local
    @prorrogar_ordem_local_aprovar_ad
    @Fluxo_aprovar_ordem_local_ad
    @Fluxo_Sistema_Completo
    
    Cenario: Realizar Autorização da Ordem Local Sem Custo pela Autoridade Determinante

        Dado que estou logado no sistema com o usuário 'anatelma.atrs' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        Quando visualizo a ordem 'numero_requisicao_aprovacao_ad.text',
        E justifico a autorização 'Justificativa Autorizacao AD - Automação' por meio da Autoridade Determinante,
        Entao vejo a mensagem 'Operação realizada com sucesso!'