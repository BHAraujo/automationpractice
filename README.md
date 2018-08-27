
Automation Practice
 - Automação E-commerce do site www.automationpractice.com utilizando Ruby, Capybara, Selenium, Site Prism, Rspec e Cucumber.

Configuração de ambiente
  - Instalar o Ruby 2.4.4, link: https://rubyinstaller.org/downloads/ ;
  - Instalar a gem bundler, comando: gem install bundler;
  - Para instalar a gems utilizadas no projeto que estão descritas no arquivo "Gemfile.rb", comando: bundle install
  - Fazer o download do webdriver Firefox compatível com a versão do browser, link https://github.com/mozilla/geckodriver/releases ;
  - Setar o webdriver como variável de ambiente do seu sistema operacional.

Executar o projeto
  - Arquivo cucumber.yml
      default: -p bdd -p html_report -c
         - -p bdd --> Exibir os steps sendo executados em tempo real;
         - -p html_report --> Gerar o relatório do(s) cenário(s) executado(s);      
          -c --> Exibir a cor dos steps em tempo real, VERDE o step passou corretamente e VERMELHO
          ocorreu alguma falha no step.

     - ambiente: prod
          prod --> Para executar o testes no ambiente de produção, "homolog" para executar no ambiente
           de homologação.

     - browser: :selenium
          :selenium --> Executar os testes com o navegador Firefox.

     - html_report: --format progress --format html --out=reports/html/features_report.html
               "--out=reports/html/features_report.html" caminho onde será salvo o relatório.

  - Arquivo homolog.yml           
        url: http://automationpractice.com/
            Url que será utilizada para executar os teste(s) no ambiente de homologação

  - Arquivo prod.yml           
        url: http://automationpractice.com/
            Url que será utilizada para executar o teste no ambiente de homologação

Projeto
  - create_account.feature
       - Realizar o cadastro no site, simula a compra de um produto.
        
        - Obs: Deixando os testes somente em um cenário, quando fosse realizar a compra caso o site
            não permita efetuar o cadastro de usuário, iria criar um dependência de cenário e quebrar
            o teste no meio da execução do cenário, para isso foi criado um arquivo chamado save_email.txt
            que contém um e-mail já cadastro pelo cenário "Cadastro de usuário", então sempre será possível
            executar o cenário "Realizar comprar". Caso o arquivo "save_email.txt" não contenha nenhum e-mail,
            será necessário executar o cenário "Cadastro de usuário".

  - purchase.feature
      - Realizar a compra de um vestido da subcategoria Summer Dresses


- Desenvolvedor
    - Nome: Bruno Henrique Araujo
    - Email: lbruno.henrique.araujo@gmail.com

