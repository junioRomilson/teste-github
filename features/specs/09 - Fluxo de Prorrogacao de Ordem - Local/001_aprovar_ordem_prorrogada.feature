#language: pt

Funcionalidade: Autorizar OMP/OS pela AD - Ordem Prorrogada

@logout

@prorrogar_ordem_local
@prorrogar_ordem_local_aprovar_ad
    Cenario: Aprovar Ordem Prorrogada como perfil AD.

        Dado que estou logado no sistema com o usuário 'anatelma.atrs' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E visualizo a Ordem Prorrogada Pendente de Autorização 'numero_requisicao_aprovacao_prorrogacao_ad.text',
        E justifico a Autorização da Prorrogação 'Justificativa Autorizacao AD - Automação',
        Entao realizo o envio e verifico a mensagem de sucesso 'Operação realizada com sucesso!'.

