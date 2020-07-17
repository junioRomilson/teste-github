#Aprovar pela Autoridade Superior

Dado("acesso a funcionalide de aprovar viagem urgente pelo AS") do
    menu.aprovar_viagem_urgente
    page_viagem_urgente.autorizar_viagem_urgente_as
end

#Aprovar pela Autotidade Designada
Dado("acesso a funcionalide de aprovar viagem urgente pelo AD") do
    menu.aprovar_viagem_urgente
    page_viagem_urgente.autorizar_viagem_urgente_ad
end


Dado("visualizo a solicitação pendente de Aprovação") do
    @autorizar = Autorizar.new
    suv = @autorizar.recuperar_dados "numero_solicitacao_viagem_urgente.text"
    page_viagem_urgente.visualizar_suv suv
end
  
Dado("realizo a {string} da SUV e visualizo a mensagem de sucesso {string}.") do |acao, mensagem|
    page_viagem_urgente.acao_autoridade acao
    expect(page).to have_content mensagem
end
  