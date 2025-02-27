namespace school;

entity Establecimiento {
  key ID: UUID;
  nombre: String(100);
  direccion: String(255);
  telefono: String(20);
  fechaInauguracion: Date;
  fechaActual: Date;
}

entity Profesores {
  key ID: UUID;
  nombre: String(100);
  apellido: String(100);
  email: String(100);
  telefono: String(20);
  establecimiento: Association to Establecimiento;
}

entity Alumnos {
  key ID: UUID;
  nombre: String(100);
  apellido: String(100);
  fechaNacimiento: Date;
  establecimiento: Association to Establecimiento;
 
  direcciones : Composition of many Direcciones on direcciones.alumno = $self;
}

entity Direcciones {
  key ID: UUID;
  calle: String(100);
  numero: Integer;
  ciudad: String(50);
  provincia: String(50);
  alumno: Association to Alumnos;
}

entity Cursos {
  key ID: UUID;
  nombre: String(50);
  establecimiento: Association to Establecimiento;
}

entity Materias {
  key ID: UUID;
  nombre: String(100);
  curso: Association to Cursos;
}

entity Inscripciones {
  key ID: UUID;
  alumno: Association to Alumnos;
  materia: Association to Materias;
  fechaInscripcion: Date;
}

entity Horarios {
  key ID: UUID;
  materia: Association to Materias;
  profesor: Association to Profesores;
  diaSemana: String(20);
  horaInicio: Time;
  horaFin: Time;
}