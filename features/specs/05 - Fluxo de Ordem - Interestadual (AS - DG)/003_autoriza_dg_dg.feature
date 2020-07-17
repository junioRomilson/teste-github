#language: pt

Funcionalidade: Autorizar OMP/OS pelo DG.

    @logout
    #@Smoke_Aprovar_AD_AS_DG
    
    @Fluxo_desmembrar_ordem_fluxo_completo
    @Fluxo_completo_oms_normal
    @Fluxo_Sistema_Completo

    Cenario: Aprovar OMP/OS pelo DG.

        Dado que estou logado no sistema com o usuário 'valeixo.mlv' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        Quando eu visualizo a ordem já aprovada pelo AD e AS 'numero_requisicao_aprovacao_ad_e_as.text',
        Então realizo a ação de 'Autorizar'.