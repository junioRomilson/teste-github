Quando("Subtipo de Transporte {string},  será pago pela {string}, entidade {string}, ressarcimento {string}, Observação  {string},") do |subtipo_transporte,
    unidade_gestora, entidade, ressarcimento, observacoes|

    #setup
    @dados[24] = subtipo_transporte 
    @dados[26] = unidade_gestora
    @dados[27] = entidade
    @dados[28] = ressarcimento
    @dados[25] = observacoes

end

Quando("código centro de custo {string}, centro de custo {string}, Autoridade Determinante {string}, dados em referência a Equipamento: Armamento {string}") do |codigo_custo, 
    centro_custo, autoridade_determinante, armamento|

    #setup
    @dados[38] = codigo_custo
    @dados[39] = centro_custo
    @dados[30] = autoridade_determinante
    @dados[32] = armamento
end

Quando("preencho a justificativa de prazo de deslocamento {string} se caso prazo o prazo for maior que o parameterizado,") do |justificativa_deslocamento|
    
    @integrantes[10] = justificativa_deslocamento

end
  
Quando("preencho a justificativa de passagem aérea {string}, caso o prazo seja menor que o definindo no sistema,") do |justificativa_passagem|
    
    @integrantes[11] = justificativa_passagem

end
  
Quando("Justifico a necessidade de Deslocamento do Servidor para outra Unidade em um Periodo Superior ao definido {string}") do |justificativa_limite_dias|
    
    @integrantes[13] = justificativa_limite_dias

end