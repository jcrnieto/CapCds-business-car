namespace TeachersSpace;

using { SchoolSpace as school} from './School';

entity Teachers {
  key ID: UUID;
  firstName: String(100);
  lastName: String(100);
  email: String(100);
  phone: String(20);
  school: Association to school.School;
}
