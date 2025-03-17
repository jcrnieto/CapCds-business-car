const cds = require('@sap/cds');

const { carValidationAdapter }= require ("../adapters/validationCar.adapter")

class validationCar extends cds.ApplicationService {
    init(){
        const { Cars } = this.entities
        console.log("tabla Cars >>>>>>>>>>>>>>>>>>>>>>",Cars)
       
        this.before(['CREATE', 'UPDATE'], Cars, carValidationAdapter);

        return super.init();
    }

}

module.exports = validationCar