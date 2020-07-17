#language: pt

Funcionalidade: Relatar Relatório de Missão ou de Serviço.
         
@logout
#@relatar_ordem_local

@fluxo_de_ordem_e_relatorio_local_completo
@fluxo_recusar_ordem_e_relatorio_local_completo
    Cenario: Enviar relatório de missão e de serviço (local).
        Dado que estou logado no sistema com o usuário 'warlei.wdr' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E aciono o detalhamento do relatório da última ordem aprovada "numero_requisicao_aprovacao_ad.text",
        Entao preencho os campos do relatório com as seguintes informações:
            | relato                   | Relato - Automação                   |
            | resultado_obtido         | Resultados Obtidos - Automação       |
            | providencias_necessarias | Providências Necessárias - Automação |
        Então envio o relatório e vejo a seguinte mensagem:'Operação realizada com sucesso!'.

@logout
@fluxo_de_ordem_e_relatorio_local_terceirizado
    Cenario: Enviar relatório de missão e de serviço (local) - Terceirizado.
        Dado que estou logado no sistema com o usuário 'carlos.caaa' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E aciono o detalhamento do relatório da última ordem aprovada "numero_requisicao_aprovacao_ad.text",
        Entao preencho os campos do relatório com as seguintes informações:
            | relato                   | Relato - Automação                   |
            | resultado_obtido         | Resultados Obtidos - Automação       |
            | providencias_necessarias | Providências Necessárias - Automação |
        Então envio o relatório e vejo a seguinte mensagem:'Operação realizada com sucesso!'.