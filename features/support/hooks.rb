require 'selenium-webdriver'
require 'json'

Before do |scn|
  Capybara.current_session.driver.browser.manage.delete_all_cookies
  page.driver.quit
  Capybara.page.driver.browser.manage.window.maximize
end


After do |scn|
  sleep(4)
  Evidencias.new.encerrando_filmagem
  if scn.failed?
    save_screenshot("data/screenshots/bugs/bug-(#{scn.name}-#{scn.id}).png")
  end
end


Before do |scn|
  $scn = scn.name
  $tag = scn.source_tag_names[1]
  $id = scn.id
  ## o id foi adicionado (enquanto não tenho uma solução mais elegante) para que os nomes das evidências de vídeo não se sobreponham em caso de esquemas de cenario 
end

