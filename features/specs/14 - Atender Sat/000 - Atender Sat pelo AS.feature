 #language: pt
 Funcionalidade: Atender Solicitação de Atendimento pelo AS
    
    @logout
    @Fluxo_atender_sat
    @Fluxo_atender_sat_responsavel_atendimento
    @Fluxo_Sistema_Completo
    Cenario: Atender Solicitação de Atendimento pelo Autoridade Superior

        Dado que estou logado no sistema com o usuário 'filho.laaf' e senha 'ctidpf'
        E seleciono a unidade de exercicio
        E acesso a funcionalidade de Aprovação de Solicitação de Atendimento pela AS,
        E visualizo a sat gerada e Pendente de Aprovação pelo AS "numero_sat_gerada.text",
        E atendo a solicitacao, informando a unidade responsavel pelo atendimento 'DPF/PCA/SP'
        Entao visualizo a seguinte mensagem 'Operação realizada com sucesso!'
    