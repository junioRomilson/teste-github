
#Autorizar pelo AD - Ordem Prorrogada.

Dado("visualizo a Ordem Prorrogada Pendente de Autorização {string},") do |arquivo|
    #setup para carregamento das informações
    @autorizar = Autorizar.new
    @info = []

    #setup arquivo
    @info[0] =  @autorizar.recuperar_dados arquivo
end
