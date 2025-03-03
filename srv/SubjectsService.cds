using {SubjectsSpace} from '../db/Subjects';

service SubjectsService {
    entity Subjects as projection on SubjectsSpace.Subjects;
}