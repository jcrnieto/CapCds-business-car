namespace SubjectsSpace;

using { CoursesSpace as courses} from './Courses';

entity Subjects {
  key ID: UUID;
  name: String(100);
  course: Association to courses.Courses;
}
