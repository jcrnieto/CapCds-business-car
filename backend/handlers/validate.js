module.exports = (srv) => {
    const { ValidatedSchool } = srv.entities;

    // Ejemplo: Agregar una validación antes de crear una escuela
    srv.before("CREATE", ValidatedSchool, async (req) => {
        const { name, inaugurationDate } = req.data;

        if (!name) {
            req.error(400, "The school name is required.");
        }

        if (new Date(inaugurationDate) > new Date()) {
            req.error(400, "The inauguration date cannot be in the future.");
        }
    });

    // Ejemplo: Modificar los datos antes de devolverlos en un GET
    srv.after("READ", ValidatedSchool, (data) => {
        return data.map((school) => ({
            ...school,
            name: school.name.toUpperCase(), // Convierte el nombre a mayúsculas
        }));
    });
};