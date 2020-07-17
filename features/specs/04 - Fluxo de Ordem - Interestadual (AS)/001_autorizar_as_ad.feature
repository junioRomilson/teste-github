#language: pt

Funcionalidade: Autorizar Ordem de Moblização ou Serviço pelo AD
    #@Smoke_AD_AS
    Contexto: Está logado na aplicação e ter acessado a funcionalidade de Autorização pela AD
        Dado que estou logado no sistema com o usuário 'anatelma.atrs' e senha 'ctidpf'
        E seleciono a unidade de exercicio

    
    @logout
    @Fluxo_aprovar_oms_ad_interestadual
    @Fluxo_aprovar_oms_as_interestadual
    @Fluxo_Sistema_Completo

    Cenario: Realizar aprovação da ordem Interestadual por meio da Autoridade Determinante

        Quando visualizo a ordem 'numero_requisicao_aprovacao_ad_e_as.text',
        E justifico a autorização 'Justificativa Autorizacao AD - Automação' por meio da Autoridade Determinante,
        Entao vejo a mensagem 'Operação realizada com sucesso!'