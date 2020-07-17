#language: pt

Funcionalidade: Autorizar OMP/OS pela autoridade autoridade Superior após a Autorização da Autoridade Determinante

    Contexto: Possuir usuário ativo no corporativo e está logado na aplicação.
        Dado que estou logado no sistema com o usuário 'filho.laaf' e senha 'ctidpf'
        E seleciono a unidade de exercicio

@logout
@Fluxo_viagem_urgente_completo
@Fluxo_Sistema_Completo

    Cenario: Realizar aprovação da ordem por meio da Autoridade Superior

        Quando filtro por Analisadas pelo Assessor 'não', visualizo a ordem 'numero_requisicao_aprovacao_ad_e_as.text',
        Então realizo a ação de 'Autorizar'.