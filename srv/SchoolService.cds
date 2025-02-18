using {school} from '../db/School';

service SchoolService {
  
  entity Establecimiento as projection on school.Establecimiento;
  
}