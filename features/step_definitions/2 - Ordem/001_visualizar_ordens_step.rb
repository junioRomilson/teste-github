Dado("que o usuario pesquise e selcione a ordem nº {string}") do |nr_ordem|
    page_login.logado
    page_consultar_ordens.menu_consultar_ordens
    page_consultar_ordens.selecionar_ordem(nr_ordem)
end

Quando("acionar a opção para visualizar") do
    page_visualizar_ordens.botao_visualizar.click
end

Então("o sistema deve apresentar o detalhamento da ordem") do
    page_visualizar_ordens.wait_until_detalhamento_ordem_visible
end