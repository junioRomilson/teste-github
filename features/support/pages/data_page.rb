class Data_verificacao

=begin

    * Classe com objetivo de tratar datas:
        1 - Validação final de Semana
        2- Validação Feriado
        
    * Script desenvolvido por Alexandre Pereira Santos - Célula 386
    
    * Contact: 
        1 - email: alex.endrios@hotmail.com
        2 - celular: 61-992861490
        
    By Jan 2018

=end   

    def initialize
        #feriados ao ser atualizado para os próximos anos por gentileza atualizar o feriado de carnaval e sexta-feira santa
        @colecao_feriado = ['01/01', '25/02', '10/04', '21/04', '01/05', '07/09', '12/10', '02/11', '15/11', '25/12']
    end

    def feriado(data_parametro, duracao)
        #mapeamento feriados RN1.6
        data = data_parametro.split('/')
        dia = data[0].to_i
        mes = data[1].to_i
        ano = data[2].to_i
        ultimo_dia = dia + duracao.to_i
        while dia < ultimo_dia
            data_feriado = Time.gm(ano, mes, dia)
            @colecao_feriado.each do |verificacao|
                data_verificacao = verificacao.split('/')
                dia_feriado = data_verificacao[0].to_i
                mes_feriado = data_verificacao[1].to_i
                ano_feriado = Time.now.strftime("%Y").to_i
                data_colecao = Time.gm(ano_feriado, mes_feriado, dia_feriado)
                if data_colecao == data_feriado
                    return true
                end
            end
            dia +=1
        end
        return false
    end

    def final_de_semana(data_parametro, duracao)
        ##mapeamento finais de semanas RN1.6
        data = data_parametro.split('/')
        dia = data[0].to_i
        mes = data[1].to_i
        ano = data[2].to_i
        ultimo_dia = dia + duracao.to_i
        while dia < ultimo_dia
            data_verificacao = Time.gm(ano, mes, dia)
            if data_verificacao.saturday? or data_verificacao.monday?
                return true
            end            
            dia +=1
        end
        return false
    end

    def data_final_semana_inicio(data_parametro)
        #mapeamento finais de semanas
        data = data_parametro.split('/')
        dia = data[0].to_i
        mes = data[1].to_i
        ano = data[2].to_i
        data_verificacao = Time.gm(ano, mes, dia)
        if data_verificacao.friday? or data_verificacao.saturday?
            return true
        else 
            return false
        end
    end

    def data_final_semana_fim(data_parametro)
        #mapeamento finais de semanas
        data = data_parametro.split('/')
        dia = data[0].to_i
        mes = data[1].to_i
        ano = data[2].to_i
        data_verificacao = Time.gm(ano, mes, dia)
        if data_verificacao.sunday? or data_verificacao.monday? 
            return true
        else 
            return false
        end
    end
    
    def data_feriado(data_parametro)
        data_feriado = data_parametro[0, 5]
        @status = nil
        @colecao_feriado.each do |verificacao|
            if verificacao == data_feriado
                @status = true
                break
            else
                @status = false
            end
        end
        return  @status
    end
    
    def dias_viagem_urgente(dias)
        dia = dias.to_i + 1
        data_viagem = Time.now - (dia * (24 * 60 * 60))
        return data_viagem.strftime("%d/%m/%Y")
    end

  end