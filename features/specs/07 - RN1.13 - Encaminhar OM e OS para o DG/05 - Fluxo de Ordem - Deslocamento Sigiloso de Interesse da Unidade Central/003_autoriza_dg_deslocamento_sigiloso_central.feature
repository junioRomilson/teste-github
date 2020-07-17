#language: pt

Funcionalidade: Autorizar OMP/OS pelo DG.

    Contexto: Possuir usuário ativo no corporativo e está logado na aplicação.
        Dado que estou logado no sistema com o usuário 'valeixo.mlv' e senha 'ctidpf'
        E seleciono a unidade de exercicio

@logout
@Tag_Regra_Fluxo_DG
@Deslocamento_Sigiloso_Unidade_Central
@Fluxo_Sistema_Completo

    Cenario: Realizar aprovação da ordem por meio do Diretor Geral

        Quando eu visualizo a ordem já aprovada pelo AD e AS 'numero_requisicao_aprovacao_ad_e_as.text',
        Então realizo a ação de 'Autorizar'.
        E verifico que o fluxo de deslocamento sigiloso de interesse da unidade central, foi concluído com sucesso.