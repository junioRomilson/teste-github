Before do
  #puts "Inicio"
end

After('@logout') do
  find(:css, 'body > div.wrapper.ng-scope > application > pf-layout > div > pf-navbar > header > nav > div.nav-wrapper > ul:nth-child(2) > li > a').click
end

After do |scenario|
  nome_cenario = scenario.name
  puts nome_cenario
  file_name = scenario.name.tr(' ', '-').downcase!
  shot = "logs/shots/#{file_name}.png"
  page.save_screenshot(shot)
  embed(shot, 'image/png', 'Clique aqui para ver o print da tela')
end
