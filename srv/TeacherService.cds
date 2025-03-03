using {SchoolSpace} from '../db/Teachers';

service TeachersService {
    entity Teachers as projection on SchoolSpace.School;
}