#language: pt

@login
@logout
Funcionalidade: Login
    
    Contexto: Acessar página de login
        Dado que estou na pagina de login do sistema

    @logar_sucesso
    Cenario: Logar o Sistema mob2 com Sucesso
        Quando eu informo um 'alineabdala.ama' e 'ctidpf'
        E seleciono a unidade de exercicio
        Entao vejo "Seja bem-vindo!"
