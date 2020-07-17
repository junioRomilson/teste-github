#language: pt

    Funcionalidade: Autorizar OMP/OS pela AD - Ordem Desmembrada

@logout
@Fluxo_desmembrar_ordem_fluxo_completo
    Cenario: Aprovar Ordem Desmembrada pela AD   

        Dado que estou logado no sistema com o usuário 'anatelma.atrs' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        Quando visualizo a ordem 'numero_requisicao_aprovacao_desmembramento.text',
        E justifico a autorização 'Justificativa Autorizacao AD - Automação' por meio da Autoridade Determinante,
        Entao vejo a mensagem 'Operação realizada com sucesso!'