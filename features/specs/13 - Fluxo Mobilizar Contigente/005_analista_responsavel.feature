#language: pt

Funcionalidade: Escolher Analista Responsável
    @logout

    @Fluxo_Analista_Responsavel
    @Fluxo_Sistema_Completo  
             
    Cenario: De acordo com a alocação aprovada pelo DG, realizo a escolha do Analista Responsavel
        Dado que estou logado no sistema com o usuário 'eduardoprimo.eps' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalidade de Mobilizar Contigente "Mobilização",
        E seleciono o analista responsavel da alocacao "numero_alocacao_gerada.text",
        Entao visualizo a seguinte mensagem 'Registro salvo com sucesso.'
        