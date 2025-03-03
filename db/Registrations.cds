namespace RegistrationsSpace;

using { StudentsSpace as students} from './Students';
using { SubjectsSpace as subjets} from './Subjects';

entity Registrations {
  key ID: UUID;
  student: Association to students.Students;
  subject: Association to subjets.Subjects;
  enrollmentDate: Date;
}