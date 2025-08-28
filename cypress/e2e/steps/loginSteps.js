import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";
import LoginPage from "../../pages/loginPage";
import InventoryPage from "../../pages/inventoryPage";
import { MESSAGES } from "../../support/constants";
let login;

Given("o usuário acessa a página inicial", () => {
    cy.visit('/',{failOnStatusCode: false})
    cy.fixture('login').then((massaLogin) => {
            login = massaLogin;
        });
})

When("o usuário preenche os campos obrigatórios com credencias válidas", () => {
    LoginPage.fillLoginFields(login.username.valid, login.password.valid)
})

When("o usuário preenche os campos obrigatórios com credencias inválidas", () => {
    LoginPage.fillLoginFields(login.username.invalid, login.password.invalid)
})

When("o usuário não preenche todos os campos obrigatórios", () => {
    
})

When("o usuário preenche os campos obrigatórios com credencias inativas", () => {
    LoginPage.fillLoginFields(login.username.locked, login.password.valid)
})

And("o usuário clica no botão de login", () => {
    LoginPage.clickLoginButton()
})

And("o usuário preenche o campo username com credencial válida", () => {
    LoginPage.fillUsernameInput(login.username.valid)
})

And("o usuário preenche o campo password com credencial válida", () => {
    LoginPage.fillPasswordInput(login.password.valid)
})

And("o usuário preenche o campo username com credencial inválida", () => {
    LoginPage.fillUsernameInput(login.username.invalid)
})

And("o usuário preenche o campo password com credencial inválida", () => {
    LoginPage.fillPasswordInput(login.password.invalid)
})

And("o usuário clica no botão de voltar do navegador", () => {
    InventoryPage.returnPreviousPage()
})

And("o usuário clica no botão menu burger", () => {
    InventoryPage.clickBurgerMenuButton()
})

And("o usuário clica no link logout", () => {
    InventoryPage.clickLogoutLink()
})

Then("o sistema acessa a página de produtos", () => {
    //Validação pela URL
    cy.url().should('include', '/inventory.html')
})

Then("o sistema não acessa a página de produtos", () => {
    //Validação pela URL
    cy.url().should('be.equal', 'https://www.saucedemo.com/')
})

Then("o sistema retorna a página inicial", () => {
    //Validação pela URL
    cy.url().should('be.equal', 'https://www.saucedemo.com/')
})

Then("o usuário não visualiza a senha na fonte da página", () => {
    LoginPage.verifyPasswordIsNotVisible()
})



And("deve ser exibido o título 'Products'", () => {
    //Validação por elemento que só aparece após login
    cy.get('.title').should('contain', 'Products')
})

And("o sistema apresenta a mensagem de erro 'FM0001'", () => {
    //Validação por mensagem de erro
    cy.get('.error-message-container.error').should('contain', MESSAGES.failure.FM0001)
})

And("o sistema apresenta a mensagem de erro 'FM0002'", () => {
    //Validação por mensagem de erro
    cy.get('.error-message-container.error').should('contain', MESSAGES.failure.FM0002)
})

And("o sistema apresenta a mensagem de erro 'FM0003'", () => {
    //Validação por mensagem de erro
    cy.get('.error-message-container.error').should('contain', MESSAGES.failure.FM0003)
})

And("o sistema apresenta a mensagem de erro 'FM0004'", () => {
    //Validação por mensagem de erro
    cy.get('.error-message-container.error').should('contain', MESSAGES.failure.FM0004)
})

And("o sistema apresenta a mensagem de erro 'FM0005'", () => {
    //Validação por mensagem de erro
    cy.get('.error-message-container.error').should('contain', MESSAGES.failure.FM0005)
})