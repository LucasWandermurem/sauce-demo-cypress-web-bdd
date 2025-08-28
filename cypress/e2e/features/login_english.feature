Feature: Login na aplicação
    Descrição da funcionalidade: Cenários voltados para a realização de Login

Background: Acessar a página inicial
    Given o usuário acessa a página inicial

Scenario: Validar login na aplicação utilizando credenciais válidas
    When o usuário preenche os campos obrigatórios com credencias válidas
    And o usuário clica no botão de login
    Then o sistema acessa a página de produtos
    And deve ser exibido o título 'Products'

Scenario: Validar login na aplicação utilizando credenciais inválidas
    When o usuário preenche os campos obrigatórios com credencias inválidas
    And o usuário clica no botão de login
    Then o sistema não acessa a página de produtos
    And o sistema apresenta a mensagem de erro 'FM0001'

Scenario: Validar login na aplicação utilizando username inválido e senha válida
    When o usuário preenche os campos obrigatórios com credencias válidas
    And o usuário preenche o campo username com credencial inválida
    And o usuário clica no botão de login
    Then o sistema não acessa a página de produtos
    And o sistema apresenta a mensagem de erro 'FM0001'

Scenario: Validar login na aplicação utilizando username válido e senha inválida
    When o usuário preenche os campos obrigatórios com credencias válidas
    And o usuário preenche o campo password com credencial inválida
    And o usuário clica no botão de login
    Then o sistema não acessa a página de produtos
    And o sistema apresenta a mensagem de erro 'FM0001'

Scenario: Validar login na aplicação sem fornecer nenhuma credencial
    When o usuário não preenche todos os campos obrigatórios
    And o usuário clica no botão de login
    Then o sistema não acessa a página de produtos
    And o sistema apresenta a mensagem de erro 'FM0002'

Scenario: Validar login na aplicação sem fornecer o username
    When o usuário não preenche todos os campos obrigatórios
    And o usuário preenche o campo password com credencial válida
    And o usuário clica no botão de login
    Then o sistema não acessa a página de produtos
    And o sistema apresenta a mensagem de erro 'FM0002'

Scenario: Validar login na aplicação sem fornecer o password
    When o usuário não preenche todos os campos obrigatórios
    And o usuário preenche o campo username com credencial válida
    And o usuário clica no botão de login
    Then o sistema não acessa a página de produtos
    And o sistema apresenta a mensagem de erro 'FM0003'

#Scenario: Validar login na aplicação utilizando teclas do teclado

Scenario: Validar retorno a página de login utilizando o botão de voltar do navegador
    When o usuário preenche os campos obrigatórios com credencias válidas
    And o usuário clica no botão de login
    And o usuário clica no botão de voltar do navegador
    Then o sistema retorna a página inicial

Scenario: Validar logout da aplicação e utilizar o botão de voltar do navegador
    When o usuário preenche os campos obrigatórios com credencias válidas
    And o usuário clica no botão de login
    And o usuário clica no botão menu burger
    And o usuário clica no link logout
    And o usuário clica no botão de voltar do navegador
    Then o sistema retorna a página inicial
    And o sistema apresenta a mensagem de erro 'FM0004'

Scenario: Validar login na aplicação utilizando credenciais inativas
    When o usuário preenche os campos obrigatórios com credencias inativas
    And o usuário clica no botão de login
    And o sistema apresenta a mensagem de erro 'FM0005'

#Scenario: Validar se o campo Password é do tipo password

#Scenario: Validar se é possivel copiar o texto do campo Password

Scenario: Validar se a senha não está visivel na fonte da página
    When o usuário preenche os campos obrigatórios com credencias válidas
    Then o usuário não visualiza a senha na fonte da página