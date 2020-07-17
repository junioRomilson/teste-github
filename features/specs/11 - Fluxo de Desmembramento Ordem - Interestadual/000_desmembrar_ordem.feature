#language: pt

Funcionalidade: Desmembrar Ordem Policial ou Ordem de Serviço - 

    Contexto: Sistema Logado
        Dado que estou logado no sistema com o usuário 'renato.rcs' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        
@logout
@Fluxo_desmembrar_ordem_fluxo_completo

    Cenario: Realizar o Desmembramento de Ordem Policial ou Ordem de Serviço.
        E realizo a consulta referente última ordem aprovada "numero_requisicao_aprovacao_ad_e_as.text"
        Quando acesso a funcionalidade de desmembramento de ordem e preencho os seguintes campos:
            | duracao_dias | 1 |
            | justificativa_desmembramento | Justificativa para a necessidade de Desmembramento da ordem |
        E defino um integrante para o desmembramento da ordem de missão ou serviço
        E realizo o envio e verifico a mensagem de confirmação do desmembramento: "Confirmar Envio do Desmembramento"
        Então confirmo e verifico a mensagem de sucesso do desmembramento: "Registro Salvo com Sucesso."