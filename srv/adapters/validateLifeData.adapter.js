
exports.validateLifeData = (req) => {
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

