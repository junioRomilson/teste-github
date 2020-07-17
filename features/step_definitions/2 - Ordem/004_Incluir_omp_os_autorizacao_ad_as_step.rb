

Quando("tipo de missão {string}, Data Início {string}, Duração em dias {string}, Destino UF {string}, Cidade {string},") do |tipo_missao, data_inicio, 
                                                                                                                        duracao_dias, destino_uf, cidade|
   
    #setup
    @dados[9] = tipo_missao
    @dados[10] = data_inicio
    @dados[12] = duracao_dias
    @dados[4] = destino_uf
    @dados[5] = cidade
end
  
Quando("Recomendações {string}, Unidade Gestora {string}, Unidade {string}, Ressarcimento {string}, Tipo de Transporte {string},") do |recomendacoes, unidade_gestora, 
                                                                                                                              unidade, ressarcimento, tipo_transporte|
     
     #setup
     @dados[18] = recomendacoes
     @dados[19] = unidade_gestora
     @dados[20] = unidade
     @dados[21] = ressarcimento
     @dados[23] = tipo_transporte
     
end
  

Quando("Subtipo Transporte {string}, Observação {string}, Unidade Gestora {string}, Entidade {string}, Ressarcimento {string},") do |subtipo_transporte, observacoes, unidade_gestora, entidade, ressarcimento|
  
    @dados[24] = subtipo_transporte 
    @dados[25] = observacoes
    @dados[26] = unidade_gestora
    @dados[27] = entidade
    @dados[28] = ressarcimento  

end

Quando("defino a data para {string} com prazo superior a {string} dias,") do |viagem_urgente, dias|
   
    @viagem[0] = viagem_urgente
    @viagem[1] = dias
end

Quando("Autoridade Determinante {string}, Armamento {string}, Cod. Centro de custo {string}, Centro de Custo {string},") do |autoridade_determinante, armamento, codigo_custo, centro_custo|
    
    @dados[30] = autoridade_determinante
    @dados[32] = armamento
    @dados[38] = codigo_custo
    @dados[39] = centro_custo

end

#Dez Dias - Regra de fluxo para o DG.
Quando("Subtipo Transporte {string}, Observação {string}, Autoridade {string}, Armamento {string}, Cod. Centro de custo {string}, Centro de Custo {string},") do |subtipo_transporte, observacoes, 
    autoridade_determinante, armamento, codigo_custo, centro_custo|

    #setup
    @dados[24] = subtipo_transporte 
    @dados[25] = observacoes
    @dados[30] = autoridade_determinante
    @dados[32] = armamento
    @dados[38] = codigo_custo
    @dados[39] = centro_custo

end

Quando("Telecomunicação {string}, Vestuário {string}, Outros {string}, Anexar Arquivo {string}, Descrição do Arquivo {string},") do |telecomunicacoes, vestuario, outros,
                                                                                                                                       anexar_arquivo, descricao_arquivo|

    #setup
    @dados[33] = telecomunicacoes
    @dados[34] = vestuario
    @dados[35] = outros
    @dados[36] = anexar_arquivo
    @dados[37] = descricao_arquivo
end
  
Quando("Definir Integrantes {string}, Chefe de Equipe {string}, Nome Responsável {string},") do |integrantes, chefe_equipe, nome_responsavel|

    #setup
    @dados_integrantes = Integrantes.new
    
    
    @qtd_integrantes = []
    @i = 0
    while @i < 3 do
        #@dados_integrantes.definir_integrantes
        @qtd_integrantes << @dados_integrantes.definir_integrantes
        @i += 1
    end
   
    integrantes = @qtd_integrantes
    nome_responsavel = @qtd_integrantes[1]
    
    @integrantes[0] = integrantes
    @integrantes[1] = chefe_equipe
    @integrantes[2] = nome_responsavel
end

Quando("Interesse {string}, Unidade Interessada - Fixo, Data - Fixa, Horário {string}, Mais de Cinco Integrantes {string}, Possivel Adiar Viagem {string},") do |interesse, 
                                                                                                                     horario_apresentacao, mais_cinco_integrantes, adiar|
    # @formulario = IncluirOmpOs.new
    # @integrantes = []
    #setup
    @integrantes[3] = interesse
    @integrantes[6] = ''
    @integrantes[7] = horario_apresentacao
    @integrantes[8] = [mais_cinco_integrantes, adiar]
   
end

Quando("Preencher o campo Valor da Diária para Ordem de Mobilizacao ou Serviço Internacional {string},") do |valor_diaria_aereo|
    @integrantes[12] = valor_diaria_aereo
end
