namespace CoursesSpace;

using { SchoolSpace as school} from './School';

entity Courses {
  key ID: UUID;
  name: String(50);
  establishment: Association to school.School;
}