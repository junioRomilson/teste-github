class Integrantes
    
    def definir_integrantes

       
        @arquivo = File.join(Dir.pwd, "lista.txt") #Concatena o caminho
        @arquivo_interacao = File.join(Dir.pwd, "controle.txt") #Concatena o caminho
        # Integrantes pelo tamanho do arquivo
        #File.open(@arquivo_interacao, 'r') do |ler|
        #    while novaLinha = ler.gets
        #        @controle = novaLinha #
        #    end
        #end
        
        # Integrantes de forma aleatoria no arquivo aleatorios
        @controle = rand(472) + 1
        
        @controle = @controle.to_i
        
        @elementos = []
        File.open(@arquivo, 'r') do |ler|
            while novaLinha = ler.gets
                dados = novaLinha
                @elementos << dados
            end
        end
        nome = @elementos[@controle]
        nome.slice! "\n"

        #@controle += 1

        @path = File.join(Dir.pwd, "controle.txt")

        local_file = open(@path, "w")
        local_file.write(@controle)    
        local_file.close
        #puts nome
        return nome
    end
end