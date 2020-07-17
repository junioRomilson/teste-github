 #language: pt
 Funcionalidade: Atender Solicitação de Atendimento pelo Responsavel pelo atendimento
    
    @logout
    @Fluxo_atender_sat_responsavel_atendimento
    @Fluxo_Sistema_Completo
    Cenario: Atender Solicitação de Atendimento pelo Responsavel pelo atendimento

        Dado que estou logado no sistema com o usuário 'costa.rcc' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E visualizo a sat gerada e Pendente de Atendimento "numero_sat_gerada.text",
        E seleciono gerar ordem
        E informo o cargo, e seleciono os integrantes da ordem, e depois incluo a ordem tipo M
        Entao visualizo a seguinte mensagem 'Operação realizada com sucesso!'
    