Quando("filtro por Analisadas pelo Assessor {string}, visualizo a ordem {string},") do |analisadas_assessor, arquivo|
    
    #setup para carregamento das informações
    @autorizar = Autorizar.new
    @info = []     
    
    #setup arquivo
    @info[0] =  @autorizar.recuperar_dados arquivo
    
    #setup
    @info[2] =  analisadas_assessor

    #realizando o teste
    @autorizar.autorizar_autoridade_superior  @info
    
end

Então("realizo a ação de {string}.") do |autorizar_acoes|
    page_autorizar_ordem.autorizar_ordem_acoes autorizar_acoes
end