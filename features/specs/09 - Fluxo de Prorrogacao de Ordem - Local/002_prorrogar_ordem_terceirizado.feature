#language: pt

Funcionalidade: Prorrogar Ordem Policial ou Ordem de Serviço - Terceirizado.

@logout
@prorrogar_ordem_local_terceirizado
@prorrogar_ordem_local_terceirizado_aprovar_ad

    Cenario: Realizar Prorrogação de Ordem Policial ou Ordem de Serviço.
        Dado que estou logado no sistema com o usuário 'alineabdala.ama' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E realizo a consulta referente última ordem aprovada "numero_requisicao_aprovacao_ad.text"
        E acesso a funcionalidade de prorrogação de ordem e preencho os seguintes campos:
            | duracao_dias | 5 |
        E aciono a opção Definir Integrantes
        E acesso a aba Definir Integrantes e defino um usuário para prorrogar ordem
        E preencho a justificativa "Justificativa para a necessidade de Prorrogação da ordem - Teste"
        E envio a solicitação de prorrogação da ordem
        E verifico a mensagem de válidação "Confirmar Envio da Prorrogação"
        Então confirmo e verifico a mensagem de sucesso: "Registro Salvo com Sucesso."