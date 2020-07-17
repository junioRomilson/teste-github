#language: pt

    Funcionalidade: Autorizar Alocação pela AD, AS, Diretor e Diretor Geral

@logout
@Fluxo_viagem_urgente_completo
@Fluxo_Sistema_Completo

    Cenario: Aprovar SUV pela Autoridade Designada
        
        Dado que estou logado no sistema com o usuário 'valeixo.mlv' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalide de aprovar viagem urgente pelo AD
        E visualizo a solicitação pendente de Aprovação
        E realizo a 'Aprovação' da SUV e visualizo a mensagem de sucesso 'Operação realizada com sucesso!'.


        