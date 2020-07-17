Dado("aciono o detalhamento do relatório da última ordem aprovada {string},") do |arquivo_rmp|
    menu.menu_relatar_rpm_rs
    relatorio = page_relatar.recuperar_dados_rmp arquivo_rmp
    page_relatar.relatar_rmp_rs relatorio
end

Entao("preencho os campos do relatório com as seguintes informações:") do |table|
    @campos_relatorio = table.rows_hash
    page_relatar.preencher_campos_relatorio(@campos_relatorio)
end

Então("envio o relatório e vejo a seguinte mensagem:{string}.") do |mensagem|
    page_relatar.entregar_relatorio
    wait_for_ajax
    expect(page).to have_content mensagem
end


# Aprovar Relatório:

Dado("aciono o detalhamento do relatório enviada para avaliação do AD {string},") do |arquivo_rmp|
    menu.menu_aprovar_rpm_rs
    relatorio_ad = page_relatar.recuperar_dados_rmp arquivo_rmp
    page_relatar.relatar_rmp_rs relatorio_ad
end

Então("aprovo o relatório de missão.") do
    page_relatar.aprovar_rmp
end

#Recusar Relatório: 

Dado("preencho a justificativa de recusa {string}") do |justificar_recusa|
    page_relatar.jutificativa_recursa justificar_recusa
end

Então("recuso o relatório de missão.") do
    page_relatar.recusar_rmp
end