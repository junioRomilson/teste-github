#language: pt

Funcionalidade: Manter Ordem de Mobilização e de Serviço - Visualizar
    
    Contexto: Pesquisar e selecionar uma ordem
        Dado que o usuario pesquise e selcione a ordem nº "11122019"
    @logout
    @cenario_completo
    @omp-os/visualizar
    Cenário: Visualizar OMP/OS
        Quando acionar a opção para visualizar
        Então o sistema deve apresentar o detalhamento da ordem