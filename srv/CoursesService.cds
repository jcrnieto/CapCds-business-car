using {CoursesSpace} from '../db/Courses';

service CoursesService {
    entity Courses as projection on CoursesSpace.Courses {
        *,
<<<<<<< HEAD
        school.name as schoolName,
    }
=======
        school as School
    };
>>>>>>> 30098a9 (se cambia nombre a propiedad school)
}


