#language: pt

    Funcionalidade: Incluir Alocação - Missão Comum - Terceirizado

    @logout

    @fluxo_completo_aprovar_alocacao_ad_terceirizado_nominal
    @fluxo_completo_aprovar_alocacao_as_terceirizado_nominal
    @fluxo_completo_aprovar_alocacao_di_terceirizado_nominal
    @fluxo_completo_aprovar_alocacao_dg_terceirizado_nominal

    @Fluxo_Sistema_Completo
    
    Cenario: Autorizar Alocação por meio da Autoridade Determinante.
        
        Dado que estou logado no sistema com o usuário 'costa.rcc' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalidade de Aprovação de Solicitação de Alocação pela AD,
        E visualizo a alocação gerada e Pendente de Aprovação "numero_alocacao_nominal_gerada.text",
        Então realizo a 'Aprovação' da alocação e visualizo a mensagem de sucesso.


        