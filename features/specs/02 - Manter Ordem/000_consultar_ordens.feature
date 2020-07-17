#language: pt

Funcionalidade: Manter Ordem de Missão Policial e Ordem de Serviço - Consulta

    Contexto: Acessar menu para consultar ordens
        Dado que seleciono no menu a opção para consultar ordens
   
    @logout
    @cenario_completo
    Cenário: Consultar OM/OS com dados válidos
        Quando informo os dados para a consulta
            | minhas_ordens   | não                                      |
            | status_ordem    | Todas                                    |
            | numero_ordem    | 11122019                                 |
            | periodo_inicio  | 03/04/2019                               |
            | periodo_final   | 07/04/2019                               |
            | orgao_parceiro  | Selecione...                             |
            | servidor        | ESTEVAO GARCEZ LEME                      |
            | area_de_atuacao | DEFESA SOCIAL E INSTITUCIONAL - DICOR/PF |
            | tipo_missao     | Missão Administrativa                    |
            | unidade         | Todas                                    |
            | destino         | Nacional                                 |
            | uf_destino      | Amazonas                                 |
            | cidade_destino  | Manaus                                   |
        E solicito pesquisar
        Então devo visualizar a listagem dos resultados
   
    @logout
    @cenario_completo
    @omp-os/consultar_dados_inexistentes
    Cenário: Consultar OM/OS com dados inexistentes
        Quando informo dados inexistentes para a consulta
            | numero_ordem | 777/2000            |
            | servidor     | José Silva de Souza |
        E solicito pesquisar
        Então devo visualizar a mensagem "Nenhum registro encontrado."
    
    @logout
    @cenario_completo
    @omp-os/consultar_periodo_invalido
    Esquema do Cenário: Informar período inválido para pesquisa.
        Quando informo datas inválidas para o período inicial ou final
            | periodo_inicio | <periodo_inicio> |
            | periodo_final  | <periodo_final>  |
        Então devo visualizar a seguinte mensagem "<mensagem>"

        Exemplos:
        | periodo_inicio | periodo_final | mensagem                                                                 |
        | 26/03/2019     | 01/03/2019    | A data do período fim deve ser maior ou igual a data do período inicial. |
    
    @logout
    @cenario_completo
    @omp-os/visualizar_integrantes
    Cenário: Visualizar integrantes
        Quando solicitar a visualização dos integrantes da ordem nº "11122019"
        Então deve ser exibido a listagem dos integrantes