#language: pt

Funcionalidade: Incluir Alocação Nominal - Missão Comum - Terceirizado

    @logout
    
    @fluxo_completo_aprovar_alocacao_as_terceirizado_nominal
    @fluxo_completo_aprovar_alocacao_di_terceirizado_nominal
    @fluxo_completo_aprovar_alocacao_dg_terceirizado_nominal

    @Fluxo_Sistema_Completo
    
    Cenario: Autorizar Alocação por meio da Autoridade Superior.

        Dado que estou logado no sistema com o usuário 'filho.laaf' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalidade de Aprovação de Solicitação de Alocação pela AS,
        E visualizo a alocação gerada e Pendente de Aprovação pelo AS "numero_alocacao_nominal_gerada.text",
        E aciono a opção 'Confirmar' quando apresentada a mensagem de existência de ordem do tipo M para outra unidade,
        E preencho a justificativa para servidores de outras unidades 'Justificativa - Automação',
        Então realizo a 'Aprovação' e justifico 'Justificativa de Aprovação'.