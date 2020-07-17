#language: pt

    Funcionalidade: Autorizar Alocação pela AD, AS, Diretor e Diretor Geral

@logout
@fluxo_completo_aprovar_alocacao_di
@fluxo_completo_aprovar_alocacao_dg
@Fluxo_Sistema_Completo
    Cenario: Aprovar Alocação pelo Diretor Geral.

        Dado que estou logado no sistema com o usuário 'valeixo.mlv' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalidade de Aprovação de Solicitação de Alocação pelo Diretor Geral,
        E visualizo a alocação gerada e Pendente de Aprovação Diretor Geral "numero_alocacao_gerada.text",
        Então realizo a 'Aprovação pelo Diretor Geral' e justifico 'Justificativa de Aprovação'.