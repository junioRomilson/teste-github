Quando("eu visualizo a ordem já aprovada pelo AD e AS {string},") do |arquivo|

    #setup para carregamento das informações
    @autorizar = Autorizar.new
    @info = []     
        
    #setup arquivo
    @info[0] =  @autorizar.recuperar_dados arquivo

    #realizando o teste
    @autorizar.autorizar_diretor_geral  @info

end