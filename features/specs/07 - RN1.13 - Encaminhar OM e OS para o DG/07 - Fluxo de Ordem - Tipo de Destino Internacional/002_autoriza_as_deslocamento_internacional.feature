#language: pt

Funcionalidade: Autorizar OMP/OS pela autoridade autoridade Superior após a Autorização da Autoridade Determinante

    Contexto: Possuir usuário ativo no corporativo e está logado na aplicação.
        Dado que estou logado no sistema com o usuário 'marcio.mno' e senha 'ctidpf'
        E seleciono a unidade de exercicio

@logout
@Tag_Regra_Fluxo_DG

@Fluxo_Deslocamento_Internacional
@Fluxo_Ordem_Destino_Internacional_as
@Fluxo_Ordem_Destino_Internacional_validar
@Fluxo_Sistema_Completo

    Cenario: Realizar aprovação da ordem por meio da Autoridade Superior

        Quando filtro por Analisadas pelo Assessor 'não', visualizo a ordem 'numero_requisicao_aprovacao_ad_e_as.text',
        Então realizo a ação de 'Autorizar'.