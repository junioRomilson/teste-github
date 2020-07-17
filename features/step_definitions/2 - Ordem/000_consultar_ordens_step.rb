##
Dado("que seleciono no menu a opção para consultar ordens") do
    page_login.logado
    page_consultar_ordens.menu_consultar_ordens
end
  
Quando("informo os dados para a consulta") do |table|
    @dados = table.rows_hash
    page_consultar_ordens.preencher_all_filtros(@dados)
end
  
Quando("solicito pesquisar") do
    page_consultar_ordens.botao_pesquisar.click
end
  
Então("devo visualizar a listagem dos resultados") do
    page_consultar_ordens.wait_until_resultado_pesquisa_visible
    page_load.wait_until_aguarde_invisible
end

##
Quando("informo dados inexistentes para a consulta") do |table|
    @dados_inexistentes = table.rows_hash
    page_consultar_ordens.preencher_dados_inexistentes(@dados_inexistentes)
end
  
Então("devo visualizar a mensagem {string}") do |mensagem|
    expect(page_consultar_ordens).to have_content(mensagem)
    page_load.wait_until_aguarde_invisible
end

##
Quando("informo datas inválidas para o período inicial ou final") do |table|
    @datas = table.rows_hash
    page_consultar_ordens.preencher_datas_invalidas(@datas)
end
  
Então("devo visualizar a seguinte mensagem {string}") do |mensagem| 
    expect(page_consultar_ordens).to have_css(page_consultar_ordens.css_toast_message, text: mensagem)
end

##
Quando("solicitar a visualização dos integrantes da ordem nº {string}") do |nr_ordem|
    page_consultar_ordens.selecionar_ordem(nr_ordem)
    page_consultar_ordens.botao_integrantes.click
end
  
Então("deve ser exibido a listagem dos integrantes") do
    within("#modalVisualizarServidor") do
    find('#btn14').click
    end
end
