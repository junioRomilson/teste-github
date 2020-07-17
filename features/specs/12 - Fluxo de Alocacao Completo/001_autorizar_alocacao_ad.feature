#language: pt

    Funcionalidade: Autorizar Alocação pela AD, AS, Diretor e Diretor Geral

@logout
@fluxo_completo_aprovar_alocacao_ad
@fluxo_completo_aprovar_alocacao_as
@fluxo_completo_aprovar_alocacao_di
@fluxo_completo_aprovar_alocacao_dg
@Fluxo_Sistema_Completo

    Cenario: Aprovar Alocação pelo Autoridade Determinante
        
        Dado que estou logado no sistema com o usuário 'otacilio.jodpa' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalidade de Aprovação de Solicitação de Alocação pela AD,
        E visualizo a alocação gerada e Pendente de Aprovação pelo AD "numero_alocacao_gerada.text",
        Então realizo a 'Aprovação' da alocação e visualizo a mensagem de sucesso.


        