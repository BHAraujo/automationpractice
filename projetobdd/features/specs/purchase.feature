#language: en

  Feature: Efetuar comprar no site automation practise
        Eu como usuário que efetuar a compra de um vestido no site Automation Practise

        Background: Preparação de ambiente
              Given que esteja na tela inicial do site Automation Practise

          @teste
        Scenario: Realizar comprar
          Given que clico no categoria Dresses
          When clico na subcategoria Summer Dresses
          And o título da pagina deve ser "Summer Dresses - My Store"
          And verifico se tem no estoque o item Printed Chiffon Dress
          And seleciono o Dresses de cor amarela
          And valido as seguintes informações do pedido
          | name_product          | quantity | size | color |
          | Printed Chiffon Dress |   1      | S    | yellow|
          And clico no botão Add to cart
          And savo o valor total da compra
          And clico no botão Proceed to checkout
          And devo ser redirecionado para tela "SHOPPING-CART SUMMARY"
          And clico no botão Proceed to checkout
          And devo ser redirecionado para tela "AUTHENTICATION"
          And efetuo o login com as seguintes credenciais
          | email  | password  |
          | $email | 123Mudar* |
          And valido as seguintes informações do endereço
          | name   | street  | city        | country       | mobile        |
          | Bruno  | Nine    | Texas 76621 | United States | 1(212)444-9999|
          And na tela Adress clico no botão Proceed to checkout
          And devo ser redirecionado para tela "Shipping"
          And aceito o termos do serviço que será prestado
          And na tela Shipping clico no botão Proceed to checkout
          And devo ser redirecionado para tela "Payment"
          And seleciono a opção Pay by bank wire
          And devo ser redirecionado para tela "ORDER SUMMARY"
          And clico no botão I confirm my order
          And devo ser redirecionado para tela "ORDER CONFIRMATION"
          Then valido as seguintes informações da tela Order Confirmation
          | Message_confirmation                | Amount |
          | Your order on My Store is complete. | $valor |
