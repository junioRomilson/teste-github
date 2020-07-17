#language: pt

Funcionalidade: Autorizar OMP/OS pela autoridade Superior após a Autorização da Autoridade Determinante
    #@Smoke_AD_AS
    Contexto: Possuir usuário ativo no corporativo e está logado na aplicação.
        Dado que estou logado no sistema com o usuário 'diana.dcm' e senha 'ctidpf'
        E seleciono a unidade de exercicio

    
    
    @logout
    @Fluxo_aprovar_oms_as_interestadual
    @Fluxo_Sistema_Completo

    Cenario: Realizar aprovação da ordem Interestadual por meio da Autoridade Superior

        Quando filtro por Analisadas pelo Assessor 'não', visualizo a ordem 'numero_requisicao_aprovacao_ad_e_as.text',
        Então realizo a ação de 'Autorizar'.