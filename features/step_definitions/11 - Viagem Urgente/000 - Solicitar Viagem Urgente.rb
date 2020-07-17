Dado("que acesse a funcionalidade de solicitar viagem urgente,") do
    menu.incluir_viagem_urgente
end

Dado("informar a ordem aprovada com viagem viagem urgente {string},") do |arquivo_ordem|
    @autorizar = Autorizar.new
    ordem = @autorizar.recuperar_dados arquivo_ordem
    page_viagem_urgente.pesquisar_ordem ordem
end
  
Dado("informar a justificativa de intenpestividade {string},") do |justificativa|
    page_viagem_urgente.justificativa_intempestividade justificativa
end
  
Dado("informar a justificativa de relevancia da missao {string},") do |justificativa|
    page_viagem_urgente.justificativa_relevancia justificativa
end

Dado("escolher a autoridade designada {string}, Possivel Adiar Viagem {string},") do |autoridade_designada, adiar_missao|
    page_viagem_urgente.autoridade_designada autoridade_designada
    page_viagem_urgente.possivel_adiar_missao adiar_missao
end
  
Dado("enviar a solicitação.") do
    page_viagem_urgente.enviar_solicitacao
    page_viagem_urgente.gravar_arquivo "numero_solicitacao_viagem_urgente.text"
end

Então("visualizo a mensagem de sucesso {string}") do |mensagem|
    expect(page).to have_content mensagem
end
  