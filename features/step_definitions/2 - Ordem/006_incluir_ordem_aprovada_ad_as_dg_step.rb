Quando("justificativa {string}") do |justificativa|
    #carregando a classe
    @pesquisar = Pesquisar.new

    #executando o teste
    @pesquisar.justificativa justificativa
    @pesquisar.autorizar_ad 
end

Entao("eu visualizo a mensagem de sucesso: {string}.") do |menssagem|
    #realizando o teste
    @formulario.preencher_formulario @dados
    if @viagem[0] == "solicitar viagem urgente"
        @formulario.definir_data_viagem_urgente  @viagem[1]
    end
    @formulario.definir_integrantes @integrantes
    nome_arquivo = 'numero_requisicao_aprovacao_ad_e_as.text'
    @formulario.enviar_formulario nome_arquivo
    wait_for_ajax
    expect(page).to have_content menssagem
end