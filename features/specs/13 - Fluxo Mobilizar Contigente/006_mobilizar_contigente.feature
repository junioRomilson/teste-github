#language: pt

Funcionalidade: Mobiliza Contigente Pelo SEMOB


    Contexto: Login SEMOB
        
        Dado que estou logado no sistema com o usuário 'souza.rso' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        
    
    @logout
    
    @fluxo_completo_alocacao_missao_mobilização_contigente
    @Fluxo_atender_sat
    @Fluxo_atender_sat_responsavel_atendimento
    @Fluxo_Sistema_Completo 

    Cenario: De acordo com a alocação aprovada pelo DG, realizo a Mobilização de Contigente.

        E acesso a funcionalidade de Mobilizar Contigente "Mobilização",
        E visualizo a alocação gerada e Pendente de Recrutamento pelo SEMOB "numero_alocacao_gerada.text",
        E realizo a distribuição da quantidade de contigente
        Entao visualizo as SATs geradas
    
  