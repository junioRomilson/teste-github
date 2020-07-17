#language: pt

Funcionalidade: Validação de Ordem Aprovada - Deslocamento Sigiloso Local

    Contexto: Possuir Usuário Cadastrado no Corporativo e ter acessado a aplicação.
        Dado que estou logado no sistema com o usuário 'marcio.mno' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        

@logout
@Tag_Regra_Fluxo_DG
@Deslocamento_Sigiloso_Unidade_Local
@Fluxo_Sistema_Completo

    Cenário: Validar a Aprovação da Ordem de Deslocamento Sigiloso Local pelo AS.
        Quando realizo a consulta referente última ordem aprovada 'numero_requisicao_aprovacao_ad_e_as.text'
        Então verifico a ordem foi aprovada pelo AS. 
        E verifico que o fluxo de deslocamento sigiloso de interesse da unidade local, foi concluído com sucesso.