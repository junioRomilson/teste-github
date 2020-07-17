#language: pt

Funcionalidade: Autorização pela Autoridade Superior

    Contexto: Possuir usuário ativo no corporativo e está logado na aplicação.
        Dado que estou logado no sistema com o usuário 'marcio.mno' e senha 'ctidpf'
        E seleciono a unidade de exercicio

@logout
@Tag_Regra_Fluxo_DG
@Fluxo_Aerea_Comercial_Central
@Fluxo_Sistema_Completo

    Cenario: Realizar Autorização da ordem por meio da Autoridade Superior

        Quando filtro por Analisadas pelo Assessor 'não', visualizo a ordem 'numero_requisicao_aprovacao_ad_e_as.text',
        Então realizo a ação de 'Autorizar'.