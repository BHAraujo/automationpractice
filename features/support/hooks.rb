After('@logout') do
  initial.do_logout
end

After do |scenario|
    if scenario.failed?
      tirar_foto(scenario.name.gsub(' ', '_'), "Falhou")
    else
      tirar_foto(scenario.name.gsub(' ', '_'), "Passou")
    end
end
