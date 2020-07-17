class LoginPage < SitePrism::Page
    def initialize
        #setup para utilizar as informações de acordo com as classes carregadas
        @tools = Tools.new
    end
=begin

    * Classe contendo o mapeamento do Login do sistema MOB2 - DPF
    * Script desenvolvido por Alexandre Pereira Santos - Célula 386

    * Contact:
        1 - email: alex.endrios@hotmail.com
        2 - celular: 61-992861490

    By Jan 2018

=end

    #Elementos: Inputs Mapeados
    element :login, '#username'
    element :password, '#password'
    element :unidade_servico, :xpath, '//*[@id="modalEscolherUnidade"]/div[2]/div/div[1]/div/div/ul/button'
    set_url "https://prehom.dpf.gov.br/mobilizacao2/inicio"

    def css_kc_feedback_text
        'span.kc-feedback-text'
    end
    
    ##metodo de acao: Logar no Sistema
    def logar(usuario, senha)
        login.set usuario
        password.set senha
        click_button 'kc-login'
    end
    def unidade
        #if @tools.element_visible? '.modal'
        if page.has_css?('.modal', wait: 7) == true 
            within('.modal.fade.ng-scope.ng-isolate-scope.in') do
                unidade_servico.click
                #puts "UNIDADE DE SERVIÇO SELECIONADA"                
            end
        end
        
    end

    def logado()
        load()
        login.set 'heron.hwpb'
        password.set 'ctidpf'
        click_button 'kc-login'
    end

    def login_invalido(credenciais)
        @credenciais = credenciais.hashes.first
        login.set @credenciais[:nome_usuario]
        password.set @credenciais[:senha]
        click_button 'kc-login'
    end
     
end