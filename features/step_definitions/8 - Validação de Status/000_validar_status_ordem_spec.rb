Então("verifico a ordem foi aprovada pelo AS.") do
    expect(page).to have_css(".col-sm-12.status", :text => "AUTORIZADA")
end


Então("verifico que o fluxo de mais de dez pessoas deslocadas, foi concluído com sucesso.") do 
    puts 'RN1.13 - Fluxo Realizado com Sucesso: Mais de 10 Pessoas Deslocadas.'
end
  
Então("verifico que o fluxo de ordem comercial aérea, foi concluído com sucesso.") do
    puts 'RN1.13 - Fluxo Realizado com Sucesso: Comercial Aérea.'
end
  
Então("verifico que o fluxo de limite de dias continuos, foi concluído com sucesso.") do
    puts 'RN1.13 - Fluxo Realizado com Sucesso: Ultrapassar o Limite de Dias Continuos.'
end


Então("verifico que o fluxo de deslocamento sigiloso de interesse da unidade local, foi concluído com sucesso.") do
    puts 'RN1.13 - Fluxo Realizado com Sucesso: Aereo Comercial Sigiloso de Interesse da Unidade Central'
end
Então("verifico que o fluxo de deslocamento sigiloso de interesse da unidade central, foi concluído com sucesso.") do
    puts 'RN1.13 - Fluxo Realizado com Sucesso: Deslocamento Sigiloso de Interesse da Unidade Central'
end
  
  Então("verifico que o fluxo de deslocamento internacional, foi concluído com sucesso.") do
    puts 'RN1.13 - Fluxo Realizado com Sucesso: Deslocamento'
  end