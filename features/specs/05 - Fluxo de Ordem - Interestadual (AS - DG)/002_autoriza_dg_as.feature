#language: pt

Funcionalidade: Autorizar OMP/OS pela autoridade autoridade Superior após a Autorização da Autoridade Determinante

#Smoke Teste - Incluir Ordem com custo e aprovar pelo AD e AS. - @Smoke_Aprovar_AD_AS
#Rodar Individualmente - @autorizar_ad_autoridade_superior=
#@Smoke_Aprovar_AD_AS_DG
#@autorizar_autoridade_superior
#@cenario_completo

@logout

@Fluxo_aprovar_oms_as_normal
@Fluxo_completo_oms_normal
@Fluxo_desmembrar_ordem_fluxo_completo
@Fluxo_Sistema_Completo

Cenario: Autorizar Ordem pela autoridade Superior.

    Dado que estou logado no sistema com o usuário 'diana.dcm' e senha 'ctidpf'
    E seleciono a unidade de exercicio
    Quando filtro por Analisadas pelo Assessor 'não', visualizo a ordem 'numero_requisicao_aprovacao_ad_e_as.text',
    Então realizo a ação de 'Autorizar'.