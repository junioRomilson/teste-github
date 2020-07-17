#language: pt

    Funcionalidade: Autorizar Alocação pela AD, AS, Diretor e Diretor Geral
    
@logout
@fluxo_completo_aprovar_alocacao_as
@fluxo_completo_aprovar_alocacao_di
@fluxo_completo_aprovar_alocacao_dg
@Fluxo_Sistema_Completo
    Cenario: Aprovar Alocação pelo Autoridade Superior

        Dado que estou logado no sistema com o usuário 'mazzotti.cmm' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalidade de Aprovação de Solicitação de Alocação pela AS,
        E visualizo a alocação gerada e Pendente de Aprovação pelo AS "numero_alocacao_gerada.text",
        E aciono a opção 'Confirmar' quando apresentada a mensagem de existência de ordem do tipo M para outra unidade,
        E preencho a justificativa para servidores de outras unidades 'Justificativa - Automação',
        Então realizo a 'Aprovação' e justifico 'Justificativa de Aprovação'.