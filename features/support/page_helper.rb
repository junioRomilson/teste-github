Dir[File.join(File.dirname(__FILE__),
    '../../pages/*.rb')].each { |file| require file }

# Modulos para chamar as classes instanciadas
module Pages

    def page_login
        @login ||= LoginPage.new
    end

    def menu
        @menu ||= Menu.new
    end 

    def page_load
        @load ||= LoadPage.new
    end
    
    def page_consultar_ordens
        @page_consultar_ordens ||= ConsultaOrdens.new
    end
    
    def page_visualizar_ordens
        @page_visualizar_ordens ||= VisualizarOrdens.new
    end

    def page_incluir_ordens
        @page_incluir_ordens ||= IncluirOmpOs.new
    end

    def page_prorrogar_ordem
        @page_prorrogar_ordem ||= Prorrogar.new
    end

    def page_tools
        @page_tools ||= Tools.new
    end

    def page_formulario
        @page_formulário ||= Formulario.new 
    end

    def page_desmembrar_ordem
        @page_desmembrar_ordem ||= Desmembrar.new
    end

    def page_relatar
        @page_relatar ||= Relatar.new
    end

    def page_incluir_alocacao
        @page_incluir_alocacao ||= Alocacao.new
    end

    def page_autorizar_alocacao
        @page_autorizar_alocacao ||= AutorizarAlocacao.new
    end

    def page_autorizar_ordem
        @page_autorizar_ordem ||= Autorizar.new
    end

    def page_mobilizar_contigente
        @page_mobilizar_contigente ||= MobilizarContigente.new
    end
    def page_pesquisar
        @page_pesquisar ||= Pesquisar.new
    end
    def page_sat
        @page_sat ||= Sat.new
    end

    def page_viagem_urgente
        @viagem_urgente ||= ViagemUrgente.new
    end

end
