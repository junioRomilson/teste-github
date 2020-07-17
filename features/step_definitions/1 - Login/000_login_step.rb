Dado("que estou na pagina de login do sistema") do
    visit '/'
end

Quando("eu informo um {string} e {string}") do |usuario, password|
    page_login.logar(usuario, password)
end

Dado("seleciono a unidade de exercicio") do
    page_login.unidade
end
  
Entao("vejo {string}") do |msg|
    @msg = msg
    expect(page).to have_content @msg
end

##
# Quando("solicitar acesso sem preencher as credencias") do |table|
#     @credenciais = table.rows_hash
#     page_login.logar(@credenciais[:nome_usuario], @credenciais[:senha])
# end
  
# Então("informe que os campos devem ser preenchidos") do |table|
#     @alerta = table.rows_hash
#     ##@ToDo Descobrir como capturar o elmento do alerta
#     #expect(page_login).to have_text @alerta[:alerta]
# end

##
# Quando("informar credencias inválidas") do |credenciais|  
#     page_login.login_invalido(credenciais)
# end
  
# Então("apresente o alerta {string}") do |alerta|
#     expect(page_login).to have_css(page_login.css_kc_feedback_text, text: alerta)
# end
