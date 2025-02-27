const cds = require('@sap/cds');

class filterByName extends cds.ApplicationService {
    init(){
        const { Establecimiento } = this.entities
        console.log("tabla establecimiento >>>>>>>>>>>>>>>>>>>>>>",Establecimiento.elements.nombre)
       
        
        this.before(['CREATE', 'UPDATE'], Establecimiento, this.validateLifeData);

        return super.init();
    }


    validateLifeData = (req) => {
        console.log("📌 Datos recibidos en validateLifeData:", req.data);
        debugger;
        const { fechaActual, fechaInauguracion } = req.data;
        console.log("fechas",fechaActual, fechaInauguracion)
        if(!fechaActual || !fechaInauguracion) return;

        const actual = new Date(fechaActual);
        const inauguracion = new Date(fechaInauguracion);

        if(inauguracion > actual){
            req.error(`la fecha ${fechaInauguracion} no puede ser mayor a la fecha ${fechaActual}.`)
        }
    }

   
}

module.exports = filterByName