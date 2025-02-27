using {school} from '../db/School';

service filterByName @(path:'/filterByName') {
    entity Establecimiento as projection on school.Establecimiento;
}