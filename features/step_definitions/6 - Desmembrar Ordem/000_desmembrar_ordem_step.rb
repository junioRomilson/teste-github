Então("acesso a funcionalidade de desmembramento de ordem e preencho os seguintes campos:") do |table|
    page_desmembrar_ordem.desmembrar
    @campos_desmembrar = table.rows_hash
    page_desmembrar_ordem.preencher_campos_desmembrar(@campos_desmembrar)
end

Então("defino um integrante para o desmembramento da ordem de missão ou serviço") do
    page_desmembrar_ordem.selecionar_integrante
end

Então("realizo o envio e verifico a mensagem de confirmação do desmembramento: {string}") do |mensagem_validacao|
    page_desmembrar_ordem.enviar_desmembramento
    expect(page_desmembrar_ordem.titulo_modal_desmembrar).to have_content mensagem_validacao
end

Então("confirmo e verifico a mensagem de sucesso do desmembramento: {string}") do |mensagem|
    nome_arquivo_desmembramento = 'numero_requisicao_aprovacao_desmembramento.text'
    page_desmembrar_ordem.enviar_formulario_desmembramento nome_arquivo_desmembramento
end

