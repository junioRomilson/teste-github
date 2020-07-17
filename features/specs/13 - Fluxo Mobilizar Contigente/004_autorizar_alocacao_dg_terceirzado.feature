 #language: pt

Funcionalidade: Incluir Alocação - Missão Comum - Terceirizado

@logout

@fluxo_completo_alocacao_missao_mobilização_contigente
@Fluxo_Analista_Responsavel   
@Fluxo_Sistema_Completo

    Cenario: Autorizar Alocação por meio da Diretor Geral.

        Dado que estou logado no sistema com o usuário 'valeixo.mlv' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalidade de Aprovação de Solicitação de Alocação pelo Diretor Geral,
        E visualizo a alocação gerada e Pendente de Aprovação Diretor Geral "numero_alocacao_gerada.text",
        Então realizo a 'Aprovação pelo Diretor Geral' e justifico 'Justificativa de Aprovação'.