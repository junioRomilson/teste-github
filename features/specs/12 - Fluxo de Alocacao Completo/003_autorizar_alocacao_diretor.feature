#language: pt

    Funcionalidade: Autorizar Alocação pela AD, AS, Diretor e Diretor Geral

@logout
@fluxo_completo_aprovar_alocacao_di
@fluxo_completo_aprovar_alocacao_dg
@Fluxo_Sistema_Completo
    Cenario: Aprovar Alocação pelo Diretor
        
        Dado que estou logado no sistema com o usuário 'roberval.rrv' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalidade de Aprovação de Solicitação de Alocação pelo Diretor,
        E visualizo a alocação gerada e Pendente de Aprovação pelo Diretor "numero_alocacao_gerada.text",
        Então realizo a 'Aprovação pelo Diretor' da alocação e visualizo a mensagem de sucesso.