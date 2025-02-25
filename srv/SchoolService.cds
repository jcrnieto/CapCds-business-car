using {school} from '../db/School';

service SchoolService {
  
  entity Establecimiento as projection on school.Establecimiento;
  entity Profesores as projection on school.Profesores;
  entity Alumnos as projection on school.Alumnos;
  entity Direcciones as projection on school.Direcciones;
  entity Cursos as projection on school.Cursos;
  entity Materias as projection on school.Materias;
  entity Inscripciones as projection on school.Inscripciones;
  entity Horarios as projection on school.Horarios;
  
}