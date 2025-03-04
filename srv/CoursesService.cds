using {CoursesSpace} from '../db/Courses';

service CoursesService {
    entity Courses as projection on CoursesSpace.Courses {
        *,
        school.name as schoolName,
    }
}
