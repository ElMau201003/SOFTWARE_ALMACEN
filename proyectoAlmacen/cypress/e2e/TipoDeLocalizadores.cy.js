describe('Tipos de localizadores', ()=>{

    it('Obtenerlo por medio de un TAG', ()=>{
        cy.visit('/automation-practice-form') 
        cy.get('input') 

    })


    it('Obtenerlo por medio de un atributo', ()=>{
        cy.get('[placeholder= "First nombreInstitucion"]') 

    })


    it('Obtenerlo por medio de una etiqueta y un atributo', ()=>{
        cy.get('input[placeholder= "Last nombreInstitucion"]') 

    })


    it('Obtenerlo por medio de su id', ()=>{
        cy.get('#useridInstitucion') 

    })

    it('Obtenerlo por medio de una clase', ()=>{
        cy.get('.col-md-3') 

    })


    it('Obtenerlo por medio de varias clases', ()=>{
        cy.get('.col-md-4.cold-sm-6') 

    })

    it('Usando contains', ()=>{
        cy.contains('Reading') 
        cy.contains('.header-wrapper','Widgets') 

    })

    it('Usando parent', ()=>{
        cy.get('input[placeholder="Last Name"]').parents()
        cy.get('input[placeholder="Last Name"]').parents()
        cy.get('input[placeholder="Last Name"]').parents().find('label')

    })
}


)