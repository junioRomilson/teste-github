#language: pt

    Funcionalidade: Autorizar Viagem Urgente pela AS

@logout
@Fluxo_viagem_urgente_completo
@Fluxo_Sistema_Completo

    Cenario: Aprovar SUV pela Autoridade Superior
        
        Dado que estou logado no sistema com o usuário 'filho.laaf' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalide de aprovar viagem urgente pelo AS
        E visualizo a solicitação pendente de Aprovação
        E realizo a 'Aprovação' da SUV e visualizo a mensagem de sucesso 'Operação realizada com sucesso!'.

        