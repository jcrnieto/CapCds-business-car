const cds = require('@sap/cds');

const { validateLifeData }= require ("../adapters/validateLifeData.adapter")

class dateValidation extends cds.ApplicationService {
    init(){
        const { School } = this.entities
        console.log("tabla establecimiento >>>>>>>>>>>>>>>>>>>>>>",School)
       
        
        this.before(['CREATE', 'UPDATE'], School, validateLifeData);

        return super.init();
    }

}

module.exports = dateValidation