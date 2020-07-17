#language: pt

Funcionalidade: Autorizar por Ordem da AS.

    @logout
    @fluxo_aprovar_oms_assessor
    Cenario: Aprovação da Ordem Normal por meio do Assessor AS.
        
        Dado que estou logado no sistema com o usuário 'nelson.nc' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalidade de Aprovação de Ordem por meio do Assessor AS,
        E seleciono 'não' para ordens analisadas e visualizo a ordem gerada 'numero_requisicao_aprovacao_ad_e_as.text',
        Então aciono a opção 'Autorizar por Ordem da AS' e o sistema realiza a ação desejada. 

    @logout
    @fluxo_aprovar_oms_assessor_terceirizado
    Cenario: Aprovação da Ordem Terceirizada por meio do Assessor AS.
        
        Dado que estou logado no sistema com o usuário 'sarah.srbc' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalidade de Aprovação de Ordem por meio do Assessor AS,
        E seleciono 'não' para ordens analisadas e visualizo a ordem gerada 'numero_requisicao_aprovacao_ad_e_as.text',
        Então aciono a opção 'Autorizar por Ordem da AS' e o sistema realiza a ação desejada.