using {StudentsSpace} from '../db/Students';

service StudentsService {
    entity Students as projection on StudentsSpace.Students;
    entity Addresses as projection on StudentsSpace.Addresses;
}