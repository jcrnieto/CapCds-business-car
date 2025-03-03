const cds = require('@sap/cds');

class dateValidation extends cds.ApplicationService {
    init(){
        const { School } = this.entities
        console.log("tabla establecimiento >>>>>>>>>>>>>>>>>>>>>>",School)
       
        
        this.before(['CREATE', 'UPDATE'], School, this.validateLifeData);

        return super.init();
    }


    validateLifeData = (req) => {
        console.log("📌 Datos recibidos en validateLifeData:", req.data);
        debugger;
        const { currentDate, inaugurationDate } = req.data;
        console.log("fechas",currentDate, inaugurationDate)
        if(!currentDate || !inaugurationDate) return;

        const actual = new Date(currentDate);
        const inauguracion = new Date(inaugurationDate);

        if(inauguracion > actual){
            req.error(`la fecha ${inaugurationDate} no puede ser mayor a la fecha ${currentDate}.`)
        }
    }

   
}

module.exports = dateValidation