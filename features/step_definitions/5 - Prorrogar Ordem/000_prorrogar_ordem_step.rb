Dado("realizo a consulta referente última ordem aprovada {string}") do |arquivo|
    #Página de Consulta de Ordens
    page_consultar_ordens.menu_consultar_ordens
    #Página de Prorrogação de Ordens
    page_prorrogar_ordem.recuperar_dados arquivo
    page_prorrogar_ordem.pesquisar   
    page_prorrogar_ordem.visualizar_ordem
end
  
Então("acesso a funcionalidade de prorrogação de ordem e preencho os seguintes campos:") do |table|
    page_prorrogar_ordem.prorrogar
    @campos_prorrogar = table.rows_hash
    page_prorrogar_ordem.preencher_os_campos(@campos_prorrogar)
end
  
Então("aciono a opção Definir Integrantes") do
    page_prorrogar_ordem.definir_integrante
end

Então("acesso a aba Definir Integrantes e defino um usuário para prorrogar ordem") do
    page_prorrogar_ordem.incluir_integrante
end

Então("preencho a justificativa {string}") do |justificativa_prorrogar|
    page_prorrogar_ordem.jutificativa_de_prorrogacao justificativa_prorrogar
end

Então("envio a solicitação de prorrogação da ordem") do
    page_prorrogar_ordem.enviar
end

Então("verifico a mensagem de válidação {string}") do |mensagem_validacao|
    expect(page_prorrogar_ordem.titulo_modal).to have_content mensagem_validacao 
end

Então("confirmo e verifico a mensagem de sucesso: {string}") do |mensagem|    
    nome_arquivo = 'numero_requisicao_aprovacao_prorrogacao_ad.text'
    page_prorrogar_ordem.enviar_formulario nome_arquivo
end