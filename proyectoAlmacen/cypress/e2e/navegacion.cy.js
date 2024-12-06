describe('navegacion', ()=>{

    it('Navegar a nuestra primer pagina', ()=>{
        cy.visit('http://localhost/G10_Rivera_Medina_ProyectoLogistica/proyectoAlmacen/') 
    })


    it('Recargar pagina', ()=>{
        cy.reload() 
    })

    it('Navegar hacia atras', ()=>{
        cy.visit('http://localhost/G10_Rivera_Medina_ProyectoLogistica/proyectoAlmacen/') 

        cy.visit('http://localhost/http://localhost/G10_Rivera_Medina_ProyectoLogistica/proyectoAlmacen/public/institucion/18') 

        cy.go('back') 
        cy.go('forward') 

    })


}


)