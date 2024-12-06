describe('Aserciones', ()=>{

    beforeEach(()=>{
        cy.visit('/automation-practice-form')


    }
)


after(()=>{
    cy.visit('/')


}
)


it ('Asercion',()=> {
cy.url().should('include','demoqa.com')

cy.get('#firstName').should('be.visible')

cy.get('#firstName').then((element)=>{
except(element).to.be.visible
except(element).to.have.attr('placeholder','First Name')


})
})

})