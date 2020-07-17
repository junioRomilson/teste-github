#language: pt

Funcionalidade: Autorizar OMP/OS pela autoridade autoridade Superior após a Autorização da Autoridade Determinante.

    @logout
    #@Smoke_Aprovar_AD_AS_DG_Terceirizado
    
    @desmembrar_ordem_fluxo_completo_terceirizado
    @Fluxo_aprovar_oms_as_terceirizado
    @Fluxo_completo_oms_terceirizado
    @Fluxo_Sistema_Completo

    Cenario: Autorizar Ordem pela autoridade Superior.

        Dado que estou logado no sistema com o usuário 'filho.laaf' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        Quando filtro por Analisadas pelo Assessor 'não', visualizo a ordem 'numero_requisicao_aprovacao_ad_e_as.text',
        Então realizo a ação de 'Autorizar'.