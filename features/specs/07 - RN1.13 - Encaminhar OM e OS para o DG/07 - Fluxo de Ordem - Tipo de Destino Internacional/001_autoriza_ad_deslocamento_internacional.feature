#language: pt

Funcionalidade: Autorizar Ordem de Moblização ou Serviço pelo AD

    Contexto: Está logado na aplicação e ter acessado a funcionalidade de Autorização pela AD
        Dado que estou logado no sistema com o usuário 'daniel.dvos' e senha 'ctidpf'
        E seleciono a unidade de exercicio

@logout
@Tag_Regra_Fluxo_DG

@Fluxo_Ordem_Destino_Internacional_ad
@Fluxo_Ordem_Destino_Internacional_as
@Fluxo_Ordem_Destino_Internacional_validar
@Fluxo_Deslocamento_Internacional
@Fluxo_Sistema_Completo

    Cenario: Realizar aprovação da ordem por meio da Autoridade Determinante

        Quando visualizo a ordem 'numero_requisicao_aprovacao_ad_e_as.text',
        E justifico a autorização 'Justificativa Autorizacao AD - Automação' por meio da Autoridade Determinante,
        Entao vejo a mensagem 'Operação realizada com sucesso!'