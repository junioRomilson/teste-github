#language: pt

    Funcionalidade: Incluir Alocação - Missão Comum - Terceirizado

@logout
@fluxo_completo_aprovar_alocacao_ad_terceirizado
@fluxo_completo_aprovar_alocacao_as_terceirizado
@fluxo_completo_aprovar_alocacao_di_terceirizado
@fluxo_completo_aprovar_alocacao_dg_terceirizado


@fluxo_completo_alocacao_missao_mobilização_contigente
@fluxo_completo_alocacao_servico_mobilização_contigente
@Fluxo_atender_sat
@Fluxo_atender_sat_responsavel_atendimento
@Fluxo_Sistema_Completo
    Cenario: Realizar a Autorização da Alocação por meio da Autoridade Determinante.
        
        Dado que estou logado no sistema com o usuário 'costa.rcc' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalidade de Aprovação de Solicitação de Alocação pela AD,
        E visualizo a alocação gerada e Pendente de Aprovação "numero_alocacao_gerada.text",
        Então realizo a 'Aprovação' da alocação e visualizo a mensagem de sucesso.


        