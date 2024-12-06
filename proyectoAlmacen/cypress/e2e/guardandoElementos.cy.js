describe('Guardando Elementos', ()=>{

it('Repeticion', ()=> {
    cy.vitit('/automation-practice-form')
    cy.get('input[placeholder="First Name"]').parents('form').then((form)=> {

const inputs = form.find('input')
const divs = form.find('div')
const labels = form.find('label')

expect(inputs.lenght).to.eq(15)

    }) 

})


it('Evitar Repeticion', ()=> {
    cy.vitit('/automation-practice-form')
    cy.get('input[placeholder="First Name"]').parents('form').then((form)=> {

const inputs = form.find('input')
const divs = form.find('div')
const labels = form.find('label')

expect(inputs.lenght).to.eq(15)
expect(divs.lenght).to.eq(70)

expect(labels.lenght).to.eq(16)

cy.task('log',inputs.lenght)


    }) 

})


}) 

