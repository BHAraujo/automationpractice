#language: en

Feature: Realizar cadastro na loja virtual
      Eu como usuário que cadastrar - me na loja virtual automation practise

      Background: Preparação de ambiente
            Given que esteja na tela de cadastro

      @logout
      Scenario: Cadastro de usuário
            When preencho o campo Email address "test_automation@gmail.com"
            And clico no botão Create an account
            And o título da pagina deve ser "Login - My Store"
            And preencho os campos de informação pessoal com os seguintes valores
            |Title |First_name |Last_name |Email                    |Password |Date_of_Birth   |
            |Mr.   |Bruno      |Araujo    |test_automation@gmail.com|123Mudar*|12/December/1993|
            And preencho os campos de endereço com as seguintes valores
            |First_name|Last_name|Adress      |City         |State|Zip  |Mobile        |References|
            |Bruno     |Araujo   |Street Nine |United States|Texas|76621|1(212)444-9999|Walmart   |
            And clico no botão Register
            Then a página deve conter o seguinte mensagem
            """
            Welcome to your account. Here you can manage all of your personal information and orders.
            """
