#language: pt

    Funcionalidade: Autorizar OMP/OS pela AD - Ordem Desmembrada - Terceirizada

@logout
@desmembrar_ordem_fluxo_completo_terceirizado
    Cenario: Aprovar Ordem Prorrogada pela AD - Terceirizado 

        Dado que estou logado no sistema com o usuário 'costa.rcc' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        Quando visualizo a ordem 'numero_requisicao_aprovacao_desmembramento.text',
        E justifico a autorização 'Justificativa Autorizacao AD - Automação' por meio da Autoridade Determinante,
        Entao vejo a mensagem 'Operação realizada com sucesso!'