// const cds = require('@sap/cds');

// module.exports = (srv) => {
  
//   srv.before('CREATE', 'Establecimiento', (req) => {
//     if (!req.data.nombre || !req.data.apellido) {
//       req.error(400, 'El nombre y apellido son obligatorios');
//     }
//   });

//   srv.on('myCustomAction', 'Materias', async (req) => {
//     return { message: 'Acción personalizada ejecutada' };
//   });

// };