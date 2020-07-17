Quando("visualizo a ordem {string},") do |arquivo|
   
   #setup para carregamento das informações
   @autorizar = Autorizar.new
   @info = []

   #setup arquivo
   @info[0] =  @autorizar.recuperar_dados arquivo
end

Quando("justifico a autorização {string} por meio da Autoridade Determinante,") do |justificativa|
    
    #setup 
    @info[1] = justificativa
    @info[3] = "Justificativa trasnporte - script test"

    #realizando o teste
    @autorizar.autorizar_autoridade_determinante @info

end
  
Entao("vejo a mensagem {string}") do |menssagem|
    expect(page).to have_content menssagem
end


#Aprovar Ordem Prorrogada.

Dado("justifico a Autorização da Prorrogação {string},") do |justificativa|
    
    #setup 
    @info[1] = justificativa
    @info[3] = "Justificativa trasnporte - script test"

    #realizando o teste
    @autorizar.autorizar_autoridade_determinante @info
    
end

Entao("realizo o envio e verifico a mensagem de sucesso {string}.") do |menssagem|
    expect(page).to have_content menssagem
end
