#language: pt

Funcionalidade: Solicitar Viagem Urgente.

    Contexto: Possuir usuário ativo no corporativo e está logado na aplicação.
        Dado que estou logado no sistema com o usuário 'alineabdala.ama' e senha 'ctidpf'
        E seleciono a unidade de exercicio

@logout
@Fluxo_viagem_urgente_completo
@Fluxo_Sistema_Completo

    Cenario: Enviar solicitação de viagem urgente.
    Dado que acesse a funcionalidade de solicitar viagem urgente,
    E informar a ordem aprovada com viagem viagem urgente 'numero_requisicao_aprovacao_ad_e_as.text',
    E informar a justificativa de intenpestividade 'justificativa de intenpestividade - automação',
    E informar a justificativa de relevancia da missao 'justificativa de relevancia da missao - automação',
    E escolher a autoridade designada 'MAURICIO LEITE VALEIXO', Possivel Adiar Viagem 'sim',
    E enviar a solicitação.
    Então visualizo a mensagem de sucesso 'Registro salvo com sucesso.' 