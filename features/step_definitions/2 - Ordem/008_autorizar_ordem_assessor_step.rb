Dado("acesso a funcionalidade de Aprovação de Ordem por meio do Assessor AS,") do
    page_autorizar_ordem.acessar_pendencias_assessor_as
end

#Aprovar Ordem por meio do Assessor DG.
Dado("acesso a funcionalidade de Aprovação de Ordem por meio do Assessor DG,") do
    page_autorizar_ordem.acessar_pendencias_assessor_dg
end

Dado("seleciono {string} para ordens analisadas e visualizo a ordem gerada {string},") do |analisadas_assessor, arquivo|
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

Dado("visualizo a ordem gerada para o Assessor DG {string},") do |string|
    
    #setup para carregamento das informações
    @autorizar = Autorizar.new
    @info = []     
        
    #setup arquivo
    @info[0] =  @autorizar.recuperar_dados arquivo

    #realizando o teste
    @autorizar.autorizar_diretor_geral  @info 
       
end

Então("aciono a opção {string} e o sistema realiza a ação desejada.") do |autorizar_assessor|
    page_autorizar_ordem.autorizar_assessor_as autorizar_assessor
end
  

