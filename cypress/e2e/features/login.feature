#language: pt

Funcionalidade: Login na aplicação
    Descrição da funcionalidade: Cenários voltados para a realização de Login

Contexto: Acessar a página inicial
    Dado o usuário acessa a página inicial

Cenário: Validar login na aplicação utilizando credenciais válidas
    Quando o usuário preenche os campos obrigatórios com credencias válidas
    E o usuário clica no botão de login
    Então o sistema acessa a página de produtos
    E deve ser exibido o título 'Products'

Cenário: Validar login na aplicação utilizando credenciais inválidas
    Quando o usuário preenche os campos obrigatórios com credencias inválidas
    E o usuário clica no botão de login
    Então o sistema não acessa a página de produtos
    E o sistema apresenta a mensagem de erro 'FM0001'

Cenário: Validar login na aplicação utilizando username inválido e senha válida
    Quando o usuário preenche os campos obrigatórios com credencias válidas
    E o usuário preenche o campo username com credencial inválida
    E o usuário clica no botão de login
    Então o sistema não acessa a página de produtos
    E o sistema apresenta a mensagem de erro 'FM0001'

Cenário: Validar login na aplicação utilizando username válido e senha inválida
    Quando o usuário preenche os campos obrigatórios com credencias válidas
    E o usuário preenche o campo password com credencial inválida
    E o usuário clica no botão de login
    Então o sistema não acessa a página de produtos
    E o sistema apresenta a mensagem de erro 'FM0001'

Cenário: Validar login na aplicação sem fornecer nenhuma credencial
    Quando o usuário não preenche todos os campos obrigatórios
    E o usuário clica no botão de login
    Então o sistema não acessa a página de produtos
    E o sistema apresenta a mensagem de erro 'FM0002'

Cenário: Validar login na aplicação sem fornecer o username
    Quando o usuário não preenche todos os campos obrigatórios
    E o usuário preenche o campo password com credencial válida
    E o usuário clica no botão de login
    Então o sistema não acessa a página de produtos
    E o sistema apresenta a mensagem de erro 'FM0002'

Cenário: Validar login na aplicação sem fornecer o password
    Quando o usuário não preenche todos os campos obrigatórios
    E o usuário preenche o campo username com credencial válida
    E o usuário clica no botão de login
    Então o sistema não acessa a página de produtos
    E o sistema apresenta a mensagem de erro 'FM0003'

#Cenário: Validar login na aplicação utilizando teclas do teclado

Cenário: Validar retorno a página de login utilizando o botão de voltar do navegador
    Quando o usuário preenche os campos obrigatórios com credencias válidas
    E o usuário clica no botão de login
    E o usuário clica no botão de voltar do navegador
    Então o sistema retorna a página inicial

Cenário: Validar logout da aplicação e utilizar o botão de voltar do navegador
    Quando o usuário preenche os campos obrigatórios com credencias válidas
    E o usuário clica no botão de login
    E o usuário clica no botão menu burger
    E o usuário clica no link logout
    E o usuário clica no botão de voltar do navegador
    Então o sistema retorna a página inicial
    E o sistema apresenta a mensagem de erro 'FM0004'

Cenário: Validar login na aplicação utilizando credenciais inativas
    Quando o usuário preenche os campos obrigatórios com credencias inativas
    E o usuário clica no botão de login
    E o sistema apresenta a mensagem de erro 'FM0005'

#Cenário: Validar se o campo Password é do tipo password

#Cenário: Validar se é possivel copiar o texto do campo Password

Cenário: Validar se a senha não está visivel na fonte da página
    Quando o usuário preenche os campos obrigatórios com credencias válidas
    Então o usuário não visualiza a senha na fonte da página